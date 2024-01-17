(import jaylib :as j)

(def size 50)
(def spacing 2)

(def default-glyphs
  (string/bytes (string " !\"#$%&'()*+,-./0123456789:;<=>?@"
                        "ABCDEFGHI\nJKLMNOPQRSTUVWXYZ[]^_`"
                        "abcdefghijklmn\nopqrstuvwxyz{|}~\\\r")))

(def font-path "FirstTimeWriting-z86Ra.ttf")
(def font2-path "Oserif-2OPL3.ttf")

(defn main
  [& args]
  (j/init-window 640 480 "")
  (j/set-target-fps 60)
  (def font
    (j/load-font-ex font-path size default-glyphs))
  (def font2
    (j/load-font-ex font2-path size))
  (while (not (j/window-should-close))
    (j/begin-drawing)
    (j/clear-background [0 0 0])
    (j/draw-text-ex font "three arguments" [10 10]
                    size spacing :blue)
    (j/draw-text-ex font2 "two arguments" [80 80]
                    size spacing :yellow)
    (j/end-drawing)))
