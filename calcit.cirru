
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |touch-control/ |respo.calcit/ |triadica-space/
  :entries $ {}
  :ir $ {} (:package |app)
    :files $ {}
      |app.config $ {}
        :configs $ {}
        :defs $ {}
          |inline-shader $ {} (:at 1656097159354) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1656097161871) (:by |u0) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1656097195460) (:by |u0) (:text |inline-shader) (:type :leaf)
              |h $ {} (:at 1656097159354) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656097164091) (:by |u0) (:text |file) (:type :leaf)
              |j $ {} (:at 1656097668441) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656097669330) (:by |u0) (:text |println) (:type :leaf)
                  |b $ {} (:at 1656097676069) (:by |u0) (:text "|\"inline shader file:") (:type :leaf)
                  |h $ {} (:at 1656097674983) (:by |u0) (:text |file) (:type :leaf)
              |l $ {} (:at 1656097166602) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656097167918) (:by |u0) (:text |read-file) (:type :leaf)
                  |b $ {} (:at 1656097170637) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1656097171137) (:by |u0) (:text |str) (:type :leaf)
                      |b $ {} (:at 1656097179496) (:by |u0) (:text "|\"shaders/") (:type :leaf)
                      |h $ {} (:at 1656097181086) (:by |u0) (:text |file) (:type :leaf)
        :ns $ {} (:at 1656097155437) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1656097155437) (:by |u0) (:text |ns) (:type :leaf)
            |b $ {} (:at 1656097155437) (:by |u0) (:text |app.config) (:type :leaf)
      |app.main $ {}
        :configs $ {}
        :defs $ {}
          |*store $ {} (:at 1654078907577) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1654078908758) (:by |u0) (:text |defatom) (:type :leaf)
              |b $ {} (:at 1654078907577) (:by |u0) (:text |*store) (:type :leaf)
              |h $ {} (:at 1654078907577) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1654078910080) (:by |u0) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1654078910471) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1654078911957) (:by |u0) (:text |:v) (:type :leaf)
                      |b $ {} (:at 1654078912688) (:by |u0) (:text |0) (:type :leaf)
          |canvas $ {} (:at 1651655933539) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651655933539) (:by |u0) (:text |def) (:type :leaf)
              |b $ {} (:at 1651655933539) (:by |u0) (:text |canvas) (:type :leaf)
              |h $ {} (:at 1651655933539) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651655942096) (:by |u0) (:text |js/document.querySelector) (:type :leaf)
                  |b $ {} (:at 1651655943620) (:by |u0) (:text "|\"canvas") (:type :leaf)
          |dispatch! $ {} (:at 1654078042087) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1654078044749) (:by |u0) (:text |defn) (:type :leaf)
              |b $ {} (:at 1654078042087) (:by |u0) (:text |dispatch!) (:type :leaf)
              |h $ {} (:at 1654078042087) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1654078048566) (:by |u0) (:text |op) (:type :leaf)
                  |b $ {} (:at 1654078049317) (:by |u0) (:text |data) (:type :leaf)
              |l $ {} (:at 1654078049582) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1654078052284) (:by |u0) (:text |js/console.log) (:type :leaf)
                  |b $ {} (:at 1654078055694) (:by |u0) (:text "|\"Dispatch:") (:type :leaf)
                  |h $ {} (:at 1654078056180) (:by |u0) (:text |op) (:type :leaf)
                  |l $ {} (:at 1654078058609) (:by |u0) (:text |data) (:type :leaf)
              |o $ {} (:at 1654265217308) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1654265220559) (:by |u0) (:text |if) (:type :leaf)
                  |L $ {} (:at 1654265223963) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1654265224229) (:by |u0) (:text |=) (:type :leaf)
                      |b $ {} (:at 1654265225224) (:by |u0) (:text |op) (:type :leaf)
                      |h $ {} (:at 1654265227475) (:by |u0) (:text |:city-spin) (:type :leaf)
                  |P $ {} (:at 1654265394518) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1654265394984) (:by |u0) (:text |do) (:type :leaf)
                      |T $ {} (:at 1654265253347) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654265392503) (:by |u0) (:text |swap!) (:type :leaf)
                          |b $ {} (:at 1654265396843) (:by |u0) (:text |*uniform-data) (:type :leaf)
                          |e $ {} (:at 1654265428852) (:by |u0) (:text |update) (:type :leaf)
                          |f $ {} (:at 1654265433846) (:by |u0) (:text |:spin-city) (:type :leaf)
                          |h $ {} (:at 1654265421360) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1654265421733) (:by |u0) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1654265421992) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1654265422212) (:by |u0) (:text |x) (:type :leaf)
                              |h $ {} (:at 1654265422900) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1654265423329) (:by |u0) (:text |+) (:type :leaf)
                                  |b $ {} (:at 1654265423937) (:by |u0) (:text |x) (:type :leaf)
                                  |h $ {} (:at 1654265437589) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1654265437844) (:by |u0) (:text |*) (:type :leaf)
                                      |b $ {} (:at 1654265713275) (:by |u0) (:text |0.01) (:type :leaf)
                                      |h $ {} (:at 1654265441981) (:by |u0) (:text |data) (:type :leaf)
                      |b $ {} (:at 1654265446541) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654265449468) (:by |u0) (:text |render-canvas!) (:type :leaf)
                  |T $ {} (:at 1654079060801) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1654079061383) (:by |u0) (:text |let) (:type :leaf)
                      |T $ {} (:at 1654079065092) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1654079081023) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1654079082282) (:by |u0) (:text |store) (:type :leaf)
                              |b $ {} (:at 1654079084756) (:by |u0) (:text |@*store) (:type :leaf)
                          |T $ {} (:at 1654079063037) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1654079064563) (:by |u0) (:text |next) (:type :leaf)
                              |T $ {} (:at 1654079038876) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1654079041518) (:by |u0) (:text |case-default) (:type :leaf)
                                  |b $ {} (:at 1654079042874) (:by |u0) (:text |op) (:type :leaf)
                                  |h $ {} (:at 1654079097982) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1654079099034) (:by |u0) (:text |do) (:type :leaf)
                                      |L $ {} (:at 1654079099357) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1654079101554) (:by |u0) (:text |js/console.warn) (:type :leaf)
                                          |b $ {} (:at 1654079103627) (:by |u0) (:text "|\"unknown op") (:type :leaf)
                                          |h $ {} (:at 1654079105920) (:by |u0) (:text |op) (:type :leaf)
                                      |T $ {} (:at 1654079057140) (:by |u0) (:text |nil) (:type :leaf)
                                  |l $ {} (:at 1654079057815) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1654079070978) (:by |u0) (:text |:cube-right) (:type :leaf)
                                      |b $ {} (:at 1654079074551) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1654079075870) (:by |u0) (:text |update) (:type :leaf)
                                          |b $ {} (:at 1654079093321) (:by |u0) (:text |store) (:type :leaf)
                                          |h $ {} (:at 1654079093717) (:by |u0) (:text |:v) (:type :leaf)
                                          |l $ {} (:at 1654079094532) (:by |u0) (:text |inc) (:type :leaf)
                      |b $ {} (:at 1654079109388) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654079109800) (:by |u0) (:text |if) (:type :leaf)
                          |b $ {} (:at 1654079110057) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1654079111218) (:by |u0) (:text |some?) (:type :leaf)
                              |b $ {} (:at 1654079113710) (:by |u0) (:text |next) (:type :leaf)
                          |h $ {} (:at 1654079114688) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1654079116935) (:by |u0) (:text |reset!) (:type :leaf)
                              |b $ {} (:at 1654079120250) (:by |u0) (:text |*store) (:type :leaf)
                              |h $ {} (:at 1654079118507) (:by |u0) (:text |next) (:type :leaf)
          |main! $ {} (:at 1651655491789) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651655491789) (:by |u0) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651655491789) (:by |u0) (:text |main!) (:type :leaf)
              |h $ {} (:at 1651655491789) (:by |u0) (:type :expr)
                :data $ {}
              |h5 $ {} (:at 1653322441518) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1653322443353) (:by |u0) (:text |if) (:type :leaf)
                  |b $ {} (:at 1653322444571) (:by |u0) (:text |dev?) (:type :leaf)
                  |h $ {} (:at 1653322446724) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1653322451415) (:by |u0) (:text |load-console-formatter!) (:type :leaf)
              |hD $ {} (:at 1651663436098) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651663436098) (:by |u0) (:text |twgl/setDefaults) (:type :leaf)
                  |b $ {} (:at 1651663436098) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651663436098) (:by |u0) (:text |js-object) (:type :leaf)
                      |b $ {} (:at 1651663436098) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651663436098) (:by |u0) (:text |:attribPrefix) (:type :leaf)
                          |b $ {} (:at 1653326753817) (:by |u0) (:text "|\"a_") (:type :leaf)
              |hL $ {} (:at 1651667885766) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651667885766) (:by |u0) (:text |inject-hud!) (:type :leaf)
              |hN $ {} (:at 1653326710204) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656008702549) (:by |u0) (:text |reset-canvas-size!) (:type :leaf)
                  |b $ {} (:at 1653326715098) (:by |u0) (:text |canvas) (:type :leaf)
              |hT $ {} (:at 1653326767585) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1653326767585) (:by |u0) (:text |reset!) (:type :leaf)
                  |b $ {} (:at 1653326767585) (:by |u0) (:text |*gl-context) (:type :leaf)
                  |h $ {} (:at 1653326767585) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1653326767585) (:by |u0) (:text |.!getContext) (:type :leaf)
                      |b $ {} (:at 1653326767585) (:by |u0) (:text |canvas) (:type :leaf)
                      |h $ {} (:at 1653326767585) (:by |u0) (:text "|\"webgl") (:type :leaf)
                      |l $ {} (:at 1654917687614) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654917689686) (:by |u0) (:text |js-object) (:type :leaf)
                          |b $ {} (:at 1654917691417) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1654917693060) (:by |u0) (:text |:antialias) (:type :leaf)
                              |b $ {} (:at 1654917693841) (:by |u0) (:text |true) (:type :leaf)
              |i $ {} (:at 1653321454992) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1653321457570) (:by |u0) (:text |render-app!) (:type :leaf)
              |l $ {} (:at 1651659885925) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651659885925) (:by |u0) (:text |render-control!) (:type :leaf)
              |m $ {} (:at 1651659892483) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651660586963) (:by |u0) (:text |start-control-loop!) (:type :leaf)
                  |X $ {} (:at 1651660592514) (:by |u0) (:text |10) (:type :leaf)
                  |b $ {} (:at 1651660591228) (:by |u0) (:text |on-control-event) (:type :leaf)
              |mD $ {} (:at 1654078897208) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1654078916506) (:by |u0) (:text |add-watch) (:type :leaf)
                  |T $ {} (:at 1654078898431) (:by |u0) (:text |*store) (:type :leaf)
                  |X $ {} (:at 1654078923833) (:by |u0) (:text |:change) (:type :leaf)
                  |b $ {} (:at 1654079195762) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1654079196402) (:by |u0) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1654079196709) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654079199850) (:by |u0) (:text |v) (:type :leaf)
                          |b $ {} (:at 1654079201328) (:by |u0) (:text |_p) (:type :leaf)
                      |T $ {} (:at 1654079202746) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654078919077) (:by |u0) (:text |render-app!) (:type :leaf)
              |mT $ {} (:at 1653568825786) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1653568825786) (:by |u0) (:text |set!) (:type :leaf)
                  |b $ {} (:at 1653568825786) (:by |u0) (:text |js/window.onresize) (:type :leaf)
                  |h $ {} (:at 1653568825786) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1653568825786) (:by |u0) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1653568825786) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1653568825786) (:by |u0) (:text |event) (:type :leaf)
                      |h $ {} (:at 1653568825786) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1656008704216) (:by |u0) (:text |reset-canvas-size!) (:type :leaf)
                          |b $ {} (:at 1653568825786) (:by |u0) (:text |canvas) (:type :leaf)
                      |l $ {} (:at 1653568825786) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1653568825786) (:by |u0) (:text |render-app!) (:type :leaf)
              |p $ {} (:at 1654197884995) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1654197891480) (:by |u0) (:text |setup-mouse-events!) (:type :leaf)
                  |b $ {} (:at 1654197941539) (:by |u0) (:text |canvas) (:type :leaf)
          |reload! $ {} (:at 1651655496878) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651655496878) (:by |u0) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651655496878) (:by |u0) (:text |reload!) (:type :leaf)
              |h $ {} (:at 1651655496878) (:by |u0) (:type :expr)
                :data $ {}
              |l $ {} (:at 1651655737306) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651655737699) (:by |u0) (:text |if) (:type :leaf)
                  |b $ {} (:at 1651655738212) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651655739085) (:by |u0) (:text |nil?) (:type :leaf)
                      |b $ {} (:at 1651655742277) (:by |u0) (:text |build-errors) (:type :leaf)
                  |h $ {} (:at 1651655813532) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651655814249) (:by |u0) (:text |do) (:type :leaf)
                      |UT $ {} (:at 1654078930361) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654078934477) (:by |u0) (:text |remove-watch) (:type :leaf)
                          |b $ {} (:at 1654078930361) (:by |u0) (:text |*store) (:type :leaf)
                          |h $ {} (:at 1654078930361) (:by |u0) (:text |:change) (:type :leaf)
                      |Uj $ {} (:at 1654078930361) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654078930361) (:by |u0) (:text |add-watch) (:type :leaf)
                          |b $ {} (:at 1654078930361) (:by |u0) (:text |*store) (:type :leaf)
                          |h $ {} (:at 1654078930361) (:by |u0) (:text |:change) (:type :leaf)
                          |l $ {} (:at 1654079212960) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1654079212960) (:by |u0) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1654079212960) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1654079212960) (:by |u0) (:text |v) (:type :leaf)
                                  |b $ {} (:at 1654079212960) (:by |u0) (:text |_p) (:type :leaf)
                              |h $ {} (:at 1654079212960) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1654079212960) (:by |u0) (:text |render-app!) (:type :leaf)
                      |V $ {} (:at 1651660616640) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651661969856) (:by |u0) (:text |replace-control-loop!) (:type :leaf)
                          |b $ {} (:at 1651660616640) (:by |u0) (:text |10) (:type :leaf)
                          |h $ {} (:at 1651660616640) (:by |u0) (:text |on-control-event) (:type :leaf)
                      |Y $ {} (:at 1653568802909) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1653568817731) (:by |u0) (:text |set!) (:type :leaf)
                          |T $ {} (:at 1653568821937) (:by |u0) (:text |js/window.onresize) (:type :leaf)
                          |h $ {} (:at 1653568802909) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1653568802909) (:by |u0) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1653568802909) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1653568802909) (:by |u0) (:text |event) (:type :leaf)
                              |h $ {} (:at 1653568802909) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656008707121) (:by |u0) (:text |reset-canvas-size!) (:type :leaf)
                                  |b $ {} (:at 1653568802909) (:by |u0) (:text |canvas) (:type :leaf)
                              |l $ {} (:at 1653568802909) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1653568802909) (:by |u0) (:text |render-app!) (:type :leaf)
                      |Z $ {} (:at 1654197953127) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654197953127) (:by |u0) (:text |setup-mouse-events!) (:type :leaf)
                          |b $ {} (:at 1654197953127) (:by |u0) (:text |canvas) (:type :leaf)
                      |a $ {} (:at 1654078954617) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1654078954617) (:by |u0) (:text |render-app!) (:type :leaf)
                      |b $ {} (:at 1651655828085) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651655829219) (:by |u0) (:text |hud!) (:type :leaf)
                          |b $ {} (:at 1651655835925) (:by |u0) (:text "|\"ok~") (:type :leaf)
                          |h $ {} (:at 1654077486424) (:by |u0) (:text "|\"OK") (:type :leaf)
                  |l $ {} (:at 1651655814965) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651655816710) (:by |u0) (:text |hud!) (:type :leaf)
                      |b $ {} (:at 1651655818033) (:by |u0) (:text "|\"error") (:type :leaf)
                      |h $ {} (:at 1651655822128) (:by |u0) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1653321460468) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1653321460468) (:by |u0) (:text |defn) (:type :leaf)
              |b $ {} (:at 1653321460468) (:by |u0) (:text |render-app!) (:type :leaf)
              |h $ {} (:at 1653321460468) (:by |u0) (:type :expr)
                :data $ {}
              |j $ {} (:at 1653322371083) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1653322378493) (:by |u0) (:text |load-objects!) (:type :leaf)
                  |b $ {} (:at 1653322395051) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1653322412977) (:by |u0) (:text |group) (:type :leaf)
                      |b $ {} (:at 1653322413367) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1653322413722) (:by |u0) (:text |{}) (:type :leaf)
                      |k $ {} (:at 1654890662638) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655977462511) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1654890668575) (:by |u0) (:text |axis-object) (:type :leaf)
                      |t $ {} (:at 1653324433386) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655977469160) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1653325206317) (:by |u0) (:text |cubes-object) (:type :leaf)
                      |tT $ {} (:at 1654332204301) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655982385545) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1654332207887) (:by |u0) (:text |bg-object) (:type :leaf)
                      |u $ {} (:at 1653567647603) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655990473316) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1653567661676) (:by |u0) (:text |tree-object) (:type :leaf)
                      |v $ {} (:at 1654075411705) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655979901402) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1654075410349) (:by |u0) (:text |tiny-cube-object) (:type :leaf)
                          |b $ {} (:at 1654078983336) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1654078983913) (:by |u0) (:text |:v) (:type :leaf)
                              |T $ {} (:at 1654078973948) (:by |u0) (:text |@*store) (:type :leaf)
                      |w $ {} (:at 1654075411705) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655979900824) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1654134922897) (:by |u0) (:text |curve-ball) (:type :leaf)
                      |x $ {} (:at 1654258258672) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655979896861) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1654258261004) (:by |u0) (:text |spin-city) (:type :leaf)
                      |y $ {} (:at 1654888968547) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655977981549) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1654888975160) (:by |u0) (:text |fiber-bending) (:type :leaf)
                      |z $ {} (:at 1654999750192) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655978020652) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1654999755393) (:by |u0) (:text |plate-bending) (:type :leaf)
                      |zD $ {} (:at 1655022417034) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1655978629508) (:by |u0) (:text |;) (:type :leaf)
                          |T $ {} (:at 1655022416675) (:by |u0) (:text |mushroom-object) (:type :leaf)
                      |zP $ {} (:at 1655990476079) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1655992647173) (:by |u0) (:text |line-wave) (:type :leaf)
                  |h $ {} (:at 1654078040543) (:by |u0) (:text |dispatch!) (:type :leaf)
              |o $ {} (:at 1653321474763) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1653325081686) (:by |u0) (:text |render-canvas!) (:type :leaf)
        :ns $ {} (:at 1651655487518) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1651655487518) (:by |u0) (:text |ns) (:type :leaf)
            |b $ {} (:at 1651655487518) (:by |u0) (:text |app.main) (:type :leaf)
            |h $ {} (:at 1651655745051) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1651655746877) (:by |u0) (:text |:require) (:type :leaf)
                |b $ {} (:at 1651655753974) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651655753974) (:by |u0) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |b $ {} (:at 1651655753974) (:by |u0) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1651655753974) (:by |u0) (:text |build-errors) (:type :leaf)
                |h $ {} (:at 1651655760608) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651655760608) (:by |u0) (:text "|\"bottom-tip") (:type :leaf)
                    |b $ {} (:at 1651655760608) (:by |u0) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1651655760608) (:by |u0) (:text |hud!) (:type :leaf)
                |l $ {} (:at 1651655763051) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651655772899) (:by |u0) (:text |triadica.config) (:type :leaf)
                    |b $ {} (:at 1651656000320) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651656000568) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651656002009) (:by |u0) (:text |dev?) (:type :leaf)
                        |b $ {} (:at 1654918100722) (:by |u0) (:text |dpr) (:type :leaf)
                |o $ {} (:at 1651656071959) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651656076261) (:by |u0) (:text "|\"twgl.js") (:type :leaf)
                    |b $ {} (:at 1651656079360) (:by |u0) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1651656081074) (:by |u0) (:text |twgl) (:type :leaf)
                |q $ {} (:at 1651658493825) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651658493825) (:by |u0) (:text |touch-control.core) (:type :leaf)
                    |b $ {} (:at 1651658493825) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651658493825) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651658493825) (:by |u0) (:text |render-control!) (:type :leaf)
                        |h $ {} (:at 1651658493825) (:by |u0) (:text |start-control-loop!) (:type :leaf)
                        |o $ {} (:at 1651660609830) (:by |u0) (:text |replace-control-loop!) (:type :leaf)
                |s $ {} (:at 1651658524541) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651658525575) (:by |u0) (:text |triadica.core) (:type :leaf)
                    |b $ {} (:at 1651658527025) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651658527242) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651658530130) (:by |u0) (:text |handle-key-event) (:type :leaf)
                        |b $ {} (:at 1651660599972) (:by |u0) (:text |on-control-event) (:type :leaf)
                        |h $ {} (:at 1653322391028) (:by |u0) (:text |load-objects!) (:type :leaf)
                        |l $ {} (:at 1653326355435) (:by |u0) (:text |render-canvas!) (:type :leaf)
                        |o $ {} (:at 1654074721872) (:by |u0) (:text |handle-screen-click!) (:type :leaf)
                        |q $ {} (:at 1654197926305) (:by |u0) (:text |setup-mouse-events!) (:type :leaf)
                        |s $ {} (:at 1656008718290) (:by |u0) (:text |reset-canvas-size!) (:type :leaf)
                |v $ {} (:at 1651662835087) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651662836992) (:by |u0) (:text |triadica.global) (:type :leaf)
                    |b $ {} (:at 1651662837950) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651662841736) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651662848262) (:by |u0) (:text |*gl-context) (:type :leaf)
                        |b $ {} (:at 1654265384940) (:by |u0) (:text |*uniform-data) (:type :leaf)
                |x $ {} (:at 1653326257509) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1653326257509) (:by |u0) (:text |triadica.hud) (:type :leaf)
                    |b $ {} (:at 1653326257509) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1653326257509) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1653326257509) (:by |u0) (:text |inject-hud!) (:type :leaf)
                |z $ {} (:at 1653324442646) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1656097645679) (:by |u0) (:text |app.shapes) (:type :leaf)
                    |b $ {} (:at 1653324453338) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1656097652161) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1656097652408) (:by |u0) (:text |line-wave) (:type :leaf)
                |zD $ {} (:at 1653326245485) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1653326250295) (:by |u0) (:text |triadica.alias) (:type :leaf)
                    |b $ {} (:at 1653326251050) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1653326251294) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1653326252006) (:by |u0) (:text |group) (:type :leaf)
      |app.shapes $ {}
        :configs $ {}
        :defs $ {}
          |line-wave $ {} (:at 1656038965975) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1656038965975) (:by |u0) (:text |defn) (:type :leaf)
              |b $ {} (:at 1656038965975) (:by |u0) (:text |line-wave) (:type :leaf)
              |h $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                :data $ {}
              |l $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656038965975) (:by |u0) (:text |;) (:type :leaf)
                  |b $ {} (:at 1656038965975) (:by |u0) (:text |js/console.log) (:type :leaf)
                  |h $ {} (:at 1656038965975) (:by |u0) (:text "|\"data") (:type :leaf)
                  |l $ {} (:at 1656038965975) (:by |u0) (:text |data) (:type :leaf)
              |o $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656038965975) (:by |u0) (:text |object) (:type :leaf)
                  |b $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1656038965975) (:by |u0) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1656038965975) (:by |u0) (:text |:draw-mode) (:type :leaf)
                          |b $ {} (:at 1656038965975) (:by |u0) (:text |:line-strip) (:type :leaf)
                      |h $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1656038965975) (:by |u0) (:text |:vertex-shader) (:type :leaf)
                          |b $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656038965975) (:by |u0) (:text |inline-shader) (:type :leaf)
                              |b $ {} (:at 1656097277100) (:by |u0) (:text "|\"wave.vert") (:type :leaf)
                      |l $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1656038965975) (:by |u0) (:text |:fragment-shader) (:type :leaf)
                          |b $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656038965975) (:by |u0) (:text |inline-shader) (:type :leaf)
                              |b $ {} (:at 1656097278728) (:by |u0) (:text "|\"wave.frag") (:type :leaf)
                      |o $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1656038965975) (:by |u0) (:text |:attributes) (:type :leaf)
                          |b $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656038965975) (:by |u0) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656038965975) (:by |u0) (:text |:idx) (:type :leaf)
                                  |b $ {} (:at 1656038965975) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1656038965975) (:by |u0) (:text |range) (:type :leaf)
                                      |b $ {} (:at 1656038965975) (:by |u0) (:text |100000) (:type :leaf)
        :ns $ {} (:at 1653325354625) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1653325354625) (:by |u0) (:text |ns) (:type :leaf)
            |b $ {} (:at 1653325354625) (:by |u0) (:text |app.shapes) (:type :leaf)
            |h $ {} (:at 1653325431848) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1653325432598) (:by |u0) (:text |:require) (:type :leaf)
                |b $ {} (:at 1653325432885) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1653325437265) (:by |u0) (:text "|\"twgl.js") (:type :leaf)
                    |b $ {} (:at 1653325438557) (:by |u0) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1653325440301) (:by |u0) (:text |twgl) (:type :leaf)
                |h $ {} (:at 1653325525377) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1656097186307) (:by |u0) (:text |app.config) (:type :leaf)
                    |b $ {} (:at 1653325534310) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1653325535403) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1653325538315) (:by |u0) (:text |inline-shader) (:type :leaf)
                |l $ {} (:at 1653554778407) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1653554784678) (:by |u0) (:text |triadica.alias) (:type :leaf)
                    |b $ {} (:at 1653554785641) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1653554785852) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1653554787139) (:by |u0) (:text |object) (:type :leaf)
                |o $ {} (:at 1653554778407) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1654075663608) (:by |u0) (:text |triadica.math) (:type :leaf)
                    |b $ {} (:at 1653554785641) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1653554785852) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1654075667506) (:by |u0) (:text |&v+) (:type :leaf)
                |q $ {} (:at 1654955675112) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1654955676974) (:by |u0) (:text |triadica.core) (:type :leaf)
                    |b $ {} (:at 1654955677734) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1654955677991) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1654955688199) (:by |u0) (:text |%nested-attribute) (:type :leaf)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
