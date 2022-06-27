
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |touch-control/ |respo.calcit/ |triadica-space/
  :entries $ {}
  :files $ {}
    |app.config $ {}
      :defs $ {}
        |inline-shader $ quote
          defmacro inline-shader (file) (println "\"inline shader file:" file)
            read-file $ str "\"shaders/" file
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*store $ quote
          defatom *store $ {} (:v 0)
        |canvas $ quote
          def canvas $ js/document.querySelector "\"canvas"
        |dispatch! $ quote
          defn dispatch! (op data) (js/console.log "\"Dispatch:" op data)
            if (= op :city-spin)
              do
                swap! *uniform-data update :spin-city $ fn (x)
                  + x $ * 0.01 data
                render-canvas!
              let
                  store @*store
                  next $ case-default op
                    do (js/console.warn "\"unknown op" op) nil
                    :cube-right $ update store :v inc
                if (some? next) (reset! *store next)
        |main! $ quote
          defn main! ()
            if dev? $ load-console-formatter!
            twgl/setDefaults $ js-object (:attribPrefix "\"a_")
            inject-hud!
            reset-canvas-size! canvas
            reset! *gl-context $ .!getContext canvas "\"webgl"
              js-object $ :antialias true
            render-app!
            render-control!
            start-control-loop! 10 on-control-event
            add-watch *store :change $ fn (v _p) (render-app!)
            set! js/window.onresize $ fn (event) (reset-canvas-size! canvas) (render-app!)
            setup-mouse-events! canvas
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *store :change)
              add-watch *store :change $ fn (v _p) (render-app!)
              replace-control-loop! 10 on-control-event
              set! js/window.onresize $ fn (event) (reset-canvas-size! canvas) (render-app!)
              setup-mouse-events! canvas
              render-app!
              hud! "\"ok~" "\"OK"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! ()
            load-objects!
              group ({}) (; axis-object) (; cubes-object) (; bg-object) (; tree-object)
                ; tiny-cube-object $ :v @*store
                ; curve-ball
                ; spin-city
                ; fiber-bending
                ; plate-bending
                ; mushroom-object
                line-wave
              , dispatch!
            render-canvas!
      :ns $ quote
        ns app.main $ :require ("\"./calcit.build-errors" :default build-errors) ("\"bottom-tip" :default hud!)
          triadica.config :refer $ dev? dpr
          "\"twgl.js" :as twgl
          touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
          triadica.core :refer $ handle-key-event on-control-event load-objects! render-canvas! handle-screen-click! setup-mouse-events! reset-canvas-size!
          triadica.global :refer $ *gl-context *uniform-data
          triadica.hud :refer $ inject-hud!
          app.shapes :refer $ line-wave
          triadica.alias :refer $ group
    |app.shapes $ {}
      :defs $ {}
        |line-wave $ quote
          defn line-wave () (; js/console.log "\"data" data)
            object $ {} (:draw-mode :line-strip)
              :vertex-shader $ inline-shader "\"wave.vert"
              :fragment-shader $ inline-shader "\"wave.frag"
              :attributes $ {}
                :idx $ range 100000
      :ns $ quote
        ns app.shapes $ :require ("\"twgl.js" :as twgl)
          app.config :refer $ inline-shader
          triadica.alias :refer $ object
          triadica.math :refer $ &v+
          triadica.core :refer $ %nested-attribute
