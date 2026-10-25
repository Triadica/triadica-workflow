
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
          :code $ quote $ defn comp-container (store)
            object $ {} (:draw-mode :line-strip)
              :vertex-shader $ inline-shader |wave.vert
              :fragment-shader $ inline-shader |wave.frag
              :attributes $ {} $ :idx (range 100000)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'V
            :generics $ [] 'V
            :return $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read :log
            :expansion $ :: 'Expr 'String
            :required $ [] 'Syntax
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store
            {} $ :states $ {}
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'canvas $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def canvas
            .unwrap $ query-selector |canvas
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'dispatch! $ %{} 'CodeEntry
          :doc "|Dispatch adapter for the renderer: state widgets send a List<Tag> cursor as op and arbitrary state as data. Validate cursor keys before invoking update-states. The old tagged :states placeholder was invalid and is not a cursor alias. :cube-right requires an existing numeric :v; unknown operations warn without resetting the store."
          :code $ quote $ defn dispatch! (op data)
            when dev? $ js/console.log |Dispatch: op data
            let
                store @*store
              if (list? op)
                let
                    cursor $ map op $ fn (key)
                      if (tag? key) key $ raise "|State cursor requires Tag keys"
                  reset! *store $ update-states store $ [] cursor data
                if (= op :cube-right)
                  match (get store :v)
                    (:some value)
                      if (number? value)
                        reset! *store $ assoc store :v $ inc value
                        raise "|cube-right expects numeric :v"
                    (:none) (raise "|cube-right expects numeric :v")
                  js/console.warn "|unknown op" op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if dev? $ load-console-formatter!
            twgl/setDefaults $ &js-object :attribPrefix |a_
            reset-canvas-size! canvas
            let
                context $ .?!getContext canvas |webgl $ &js-object :antialias true
              if (js-present? context)
                reset! *gl-context $ Option :some context
                raise |WebGL-context-unavailable
            render-app!
            render-control!
            start-control-loop! 10 on-control-event
            add-watch! *store :change $ fn (v _p) (render-app!)
            set! js/window.onresize $ fn (event) (reset-canvas-size! canvas) (render-app!)
            setup-mouse-events! canvas
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            load-objects! (comp-container @*store) dispatch!
            paint-canvas!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
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
