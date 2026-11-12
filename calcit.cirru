
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |touch-control/ |respo.calcit/ |triadica-space/ |quaternion/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container ()
            object $ {} (:draw-mode :line-strip)
              :vertex-shader $ inline-shader |wave.vert
              :fragment-shader $ inline-shader |wave.frag
              :attributes $ {} $ :idx (range 100000)
          :examples $ []
          :schema $ quote $ Fn
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            app.config :refer $ inline-shader
            triadica.alias :refer $ object
    'app.config $ %{} 'FileEntry
      :defs $ {} $ 'inline-shader
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-shader (file) (println "|inline shader file:" file)
            read-file $ str |shaders/ file
          :examples $ []
          :schema $ quote $ Macro Syntax
            -> $ Expr String
            :capabilities :fs-read :log
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store
            SceneStore :states ({}) :v None
          :examples $ []
          :schema $ quote $ Ref SceneStore
        'SceneOp $ %{} 'CodeEntry
          :doc "|A direct state cursor or a tagged scene operation."
          :code $ quote $ defunion SceneOp (List Tag) Tag
          :examples $ []
          :schema $ quote UnionDef
        'SceneStateValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion SceneStateValue Bool Number String Tag (List SceneStateValue) (Map Tag SceneStateValue)
          :examples $ []
          :schema $ quote UnionDef
        'SceneStore $ %{} 'CodeEntry
          :doc "|The template stores a Triadica state tree and an optional cube position."
          :code $ quote $ defstruct SceneStore
            :states $ Map Tag SceneStateValue
            :v $ Option Number
          :examples $ []
          :schema $ quote StructDef
        'canvas $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def canvas
            .unwrap $ query-selector |canvas
          :examples $ []
          :schema $ quote js-ffi.browser/DomElementHost
        'dispatch! $ %{} 'CodeEntry
          :doc "|Validate the renderer cursor and decode its payload into the template state tree."
          :code $ quote $ defn dispatch! (op data)
            when dev? $ js/console.log |Dispatch: op data
            let
                store @*store
              match (try-decode-map-as op SceneOp)
                (:ok operation)
                  match operation
                    (List cursor)
                      reset! *store $ decode-map-as
                        update-states (&struct:to-map store) ([] cursor data)
                        , SceneStore
                    (Tag tag)
                      if (= tag :cube-right)
                        match (:v store)
                          (:some value)
                            reset! *store $ assoc store :v $ Some (inc value)
                          (:none) (raise "|cube-right expects numeric :v")
                        js/console.warn "|unknown op" op
                (:err _)
                  if (list? op) (raise "|State cursor requires Tag keys") (js/console.warn "|unknown op" op)
            , &unit
          :examples $ []
          :schema $ quote $ Fn Operation Payload (-> Unit) (:generics Operation Payload) (:features :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if dev? $ load-console-formatter!
            twgl/setDefaults $ &js-object :attribPrefix |a_
            reset-canvas-size! canvas
            let
                context $ .?!getContext canvas |webgl $ &js-object :antialias true
              if (js-present? context)
                reset! *gl-context $ Some context
                raise |WebGL-context-unavailable
            render-app!
            render-control!
            start-control-loop! 10 on-control-event
            add-watch! *store :change $ fn (v _p) (render-app!)
            set! js/window.onresize $ fn (event) (reset-canvas-size! canvas) (render-app!)
            setup-mouse-events! canvas
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (js-nullish? build-errors)
              do (remove-watch! *store :change)
                add-watch! *store :change $ fn (v _p) (render-app!)
                replace-control-loop! 10 on-control-event
                set! js/window.onresize $ fn (event) (reset-canvas-size! canvas) (render-app!)
                setup-mouse-events! canvas
                render-app!
                hud! |ok~ |OK
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            load-objects! (comp-container) dispatch!
            paint-canvas!
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (|./calcit.build-errors :default build-errors) (|bottom-tip :default hud!)
            triadica.config :refer $ dev? dpr
            |twgl.js :as twgl
            touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
            triadica.core :refer $ on-control-event load-objects! paint-canvas! setup-mouse-events! reset-canvas-size! update-states
            triadica.global :refer $ *gl-context
            app.comp.container :refer $ comp-container
            js-ffi.browser :refer $ query-selector
