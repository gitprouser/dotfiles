;;----------------------------------------------------------------------------
;; *data-dir*/key-maps.lisp
;;----------------------------------------------------------------------------

;; export custom maps.
(export '(*toggles-map* *announce-map* *frequent-map* *websearch-map*
          *mplayer-daemon-map1* *mplayer-daemon-map2*))

;; set a few undefined keysyms, unavailable in */stumpwm/keysyms.lisp
(define-keysym #x1008ff02 "XF86MonBrightnessUp")
(define-keysym #x1008ff03 "XF86MonBrightnessDown")

;; set "Super+Shift+\" as prefix for root-map bindings (this will not be used)
(set-prefix-key (kbd "s-|"))

;; <input-map bindings>
;;(setf *input-map*
;;  (let ((m (make-sparse-keymap)))
;;    (labels ((dk (m k c) (define-key m k c)))
;;    (dk m (kbd "ESC")   "abort")
;;    (dk m (kbd "w")     "windowlist")
;;    (dk m (kbd "g")     "vgroups")
;;   M)))

;; <groups-map bindings>
;;(setf *groups-map*
;;  (let ((m (make-sparse-keymap)))
;;    (labels ((dk (m k c) (define-key m k c)))
;;    (dk m (kbd "ESC")   "abort")
;;    (dk m (kbd "w")     "windowlist")
;;    (dk m (kbd "g")     "vgroups")
;;   M)))

(setf *root-map*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    (dk m (kbd "ESC") "abort")
   M)))

;; <commonly toggled options>
(defvar *toggles-map*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    (dk m (kbd "s") "mode-line")
    (dk m (kbd "ESC") "abort")
   M)))

(defvar *announce-map*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    (dk m (kbd "b")   "announce-battery")
    (dk m (kbd "d")   "echo-date")
    (dk m (kbd "f")   "announce-free-mem")
    (dk m (kbd "h")   "announce-harddrives")
    (dk m (kbd "l")   "announce-loadavg")
    (dk m (kbd "m")   "announce-mifo")
    (dk m (kbd "M")   "announce-mifo-raw")
    (dk m (kbd "C-m") "announce-mifo-list")
    (dk m (kbd "p")   "announce-highcpu")
    (dk m (kbd "u")   "announce-unread-mail")
    (dk m (kbd "v")   "announce-oss-vol")
    (dk m (kbd "w")   "pout exec sdcv -nu WordNet ")
    (dk m (kbd "ESC") "abort")
   M)))

;; <frequently used programs>
(defvar *frequent-map*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    (dk m (kbd "2") "announce-oss-sp")
    (dk m (kbd "3") "announce-oss-hp")
    (dk m (kbd "b") "display-random-bg")
    (dk m (kbd "B") "exec display -window root -resize 1366x768! ~/foto/wall/1366x768_dizorb_landscape_study_hd_wallpaper.png")
    (dk m (kbd "C-b") "exec display -window root -resize 1366x768! ~/foto/wall/wallpaper-249719.png")
    (dk m (kbd "f") "ror_firefox")
    (dk m (kbd "h") "exec urxvt -e htop")
    (dk m (kbd "m") "ror_mutt")
    (dk m (kbd "s") "exec urxvt -e nsudoku 12")
    (dk m (kbd "x") "exec xskat -opt ${XDG_CONFIG_DIR:-${HOME}/.config}/xorg/xskat.opt -list ${XDG_CONFIG_DIR:-${HOME}/.config}/xorg/xskat.lst")
    (dk m (kbd "ESC") "abort")
   M)))

;; <search-engine bindings>
(defvar *websearch-map*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    (dk m (kbd "a") "amazon")
    (dk m (kbd "c") "cliki")
    (dk m (kbd "e") "ebay")
    (dk m (kbd "f") "sourceforge")
    (dk m (kbd "g") "google")
    (dk m (kbd "G") "googlessl")
    (dk m (kbd "i") "imdb")
    (dk m (kbd "k") "kickass")
    (dk m (kbd "l") "lastfm")
    (dk m (kbd "o") "codesearch")
    (dk m (kbd "p") "piratebay")
    (dk m (kbd "r") "aur")
    (dk m (kbd "s") "slashdot")
    (dk m (kbd "w") "wikipedia")
    (dk m (kbd "x") "ixsearch")
    (dk m (kbd "y") "youtube")
    (dk m (kbd ";") "surfraw")
    (dk m (kbd "ESC") "abort")
  M)))

;; <mplayer-daemon-* bindings>
(defvar *mplayer-daemon-map1*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    (dk m (kbd "d")     "exec sudo /etc/rc.d/mifo start")
    ;(dk m (kbd "d")     "exec mifo --daemon")
    (dk m (kbd "t")     "exec mifo --toggle")
    (dk m (kbd "r")     "announce-mifo-random")
    (dk m (kbd "j")     "exec mifo --next +")
    (dk m (kbd "k")     "exec mifo --prev dir")
    (dk m (kbd "l")     "announce-mifo-next")
    (dk m (kbd "h")     "announce-mifo-prev")
    (dk m (kbd "L")     "prompt-mifo-next")
    (dk m (kbd "H")     "prompt-mifo-prev")
    (dk m (kbd "a")     "prompt-mifo-load")
    (dk m (kbd "A")     "prompt-mifo-append")
    (dk m (kbd "p")     "prompt-mifo-playlist")
    (dk m (kbd "s")     "prompt-mifo-save")
    (dk m (kbd "S")     "exec mifo --stop")
    (dk m (kbd "q")     "exec sudo /etc/rc.d/mifo stop")
    (dk m (kbd "Q")     "exec sudo /etc/rc.d/mifo kill")
    ;(dk m (kbd "q")     "exec mifo --quit")
    (dk m (kbd "f")     "exec mifo --fullscreen")
    (dk m (kbd "+")     "announce-mifo-fadd")
    (dk m (kbd "-")     "announce-mifo-fdel")
    (dk m (kbd "Return")"prompt-mifo-reload")
    (dk m (kbd "ESC")   "abort")
   M)))
(defvar *mplayer-daemon-map2*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    (dk m (kbd "l")     "exec mifo -c seek 15")
    (dk m (kbd "C-l")   "exec mifo -c seek 405")
    (dk m (kbd "h")     "exec mifo -c seek -17")
    (dk m (kbd "L")     "exec mifo -c seek 45")
    (dk m (kbd "H")     "exec mifo -c seek -47")
    (dk m (kbd "C-h")   "exec mifo -c seek -407")
    (dk m (kbd "!")     "exec mifo -c seek_chapter -1")
    (dk m (kbd "@")     "exec mifo -c seek_chapter 1")
    (dk m (kbd "BackSpace") "exec mifo -c seek 0 1")
    (dk m (kbd "ESC")   "abort")
   M)))

;; <top-map bindings>
(setf *top-map*
  (let ((m (make-sparse-keymap)))
    (labels ((dk (m k c) (define-key m k c)))
    ;; <numerical bindings>
    (dk m (kbd "s-1")    "gselect 1")
    (dk m (kbd "s-2")    "gselect 2")
    (dk m (kbd "s-3")    "gselect 3")
    (dk m (kbd "s-4")    "gselect 4")
    (dk m (kbd "s-5")    "gselect 5")
    (dk m (kbd "s-6")    "gselect 6")
    (dk m (kbd "s-8")    "mark")
    (dk m (kbd "s-C-8")  "clear-window-marks")
    (dk m (kbd "s-M-8")  "gmove-marked")
    (dk m (kbd "s-9")    "quiet-resize -15 0")
    (dk m (kbd "s-0")    "quiet-resize  15 0")
    (dk m (kbd "C-1")    "select-window-by-number 1")
    (dk m (kbd "C-2")    "select-window-by-number 2")
    (dk m (kbd "C-3")    "select-window-by-number 3")
    (dk m (kbd "C-4")    "select-window-by-number 4")
    (dk m (kbd "C-5")    "select-window-by-number 5")
    (dk m (kbd "C-6")    "select-window-by-number 6")
    (dk m (kbd "C-7")    "select-window-by-number 7")
    (dk m (kbd "C-8")    "select-window-by-number 8")
    (dk m (kbd "C-9")    "select-window-by-number 9")
    (dk m (kbd "C-0")    "select-window-by-number 0")
    ;; <special-char bindings>
    (dk m (kbd "s-!")    "gmove 1")
    (dk m (kbd "s-@")    "gmove 2")
    (dk m (kbd "s-#")    "gmove 3")
    (dk m (kbd "s-$")    "gmove 4")
    (dk m (kbd "s-%")    "gmove 5")
    (dk m (kbd "s-^")    "gmove 6")
    (dk m (kbd "s-*")    "pull-marked")
    (dk m (kbd "s-(")    "quiet-resize 0 -15")
    (dk m (kbd "s-)")    "quiet-resize 0  15")
    (dk m (kbd "s--")    "vsplit")
    (dk m (kbd "s-=")    "hsplit")
    (dk m (kbd "s-+")    "balance-frames")
    (dk m (kbd "s-;")    "colon")
    (dk m (kbd "s-:")    "manpage")
    (dk m (kbd "s-C-;")  "eval")
    (dk m (kbd "s-,")    "gprev")
    (dk m (kbd "s-<")    "gmove-prev")
    (dk m (kbd "s-C-,")  "gprev-with-window")
    (dk m (kbd "s-.")    "gnext")
    (dk m (kbd "s->")    "gmove-next")
    (dk m (kbd "s-C-.")  "gnext-with-window")
    (dk m (kbd "s-/")    "gother")
    (dk m (kbd "s-?")    "lastmsg")
    (dk m (kbd "s-ESC")  "exec banishmouse")
    (dk m (kbd "s-Tab")  "fother")
    (dk m (kbd "s-BackSpace")       "fclear")
    (dk m (kbd "s-S-BackSpace")     "delete-window")
    (dk m (kbd "s-C-BackSpace")     "kill-window")
    (dk m (kbd "s-Return")          "exec urxvt -e tmux -f ${XDG_CONFIG_DIR:-${HOME}/.config}/tmux/tmux.conf -L xorg new-session")
    (dk m (kbd "s-S-Return")        "tmux-attach-else-new")
    (dk m (kbd "s-C-Return")        "exec urxvt")
    (dk m (kbd "s-M-Return")        "exec xdotool mousedown 1 ; xdotool mouseup 1")
    (dk m (kbd "s-SunPrint_Screen") "exec import -window root ${XDG_PICTURES_DIR:-${HOME}/foto}/shot/$(date +%Y_%m_%d-%H%M%S).png")
    (dk m (kbd "s-S-Delete")        "exec alock -bg image:file=${HOME}/foto/wall/beheading.png -cursor glyph -auth pam >&/dev/null")
    ;; <alphabetic bindings>
    (dk m (kbd "s-a")    *announce-map*)
    (dk m (kbd "s-b")    "redisplay")
    (dk m (kbd "s-B")    "refresh")
    (dk m (kbd "s-c")    "remember")
    (dk m (kbd "s-C")    "place-existing-windows")
    (dk m (kbd "s-d")    *mplayer-daemon-map1*)
    (dk m (kbd "s-D")    "prompt-mifo-command")
    (dk m (kbd "s-e")    "exec ")
    (dk m (kbd "s-E")    "shell-command-output")
    (dk m (kbd "s-f")    *frequent-map*)
    (dk m (kbd "s-F")    "forget")
    (dk m (kbd "s-g")    "vgroups")
    (dk m (kbd "s-G")    "grouplist")
    (dk m (kbd "s-h")    "move-focus left")
    (dk m (kbd "s-H")    "move-window left")
    (dk m (kbd "s-C-h")  "exchange-direction left")
    (dk m (kbd "s-M-h")  "ratrelwarp -7 0")
    (dk m (kbd "s-i")    "iresize")
    (dk m (kbd "s-I")    "fselect")
    (dk m (kbd "s-j")    "move-focus down")
    (dk m (kbd "s-J")    "move-window down")
    (dk m (kbd "s-C-j")  "exchange-direction down")
    (dk m (kbd "s-M-j")  "ratrelwarp 0 7")
    (dk m (kbd "s-k")    "move-focus up")
    (dk m (kbd "s-K")    "move-window up")
    (dk m (kbd "s-C-k")  "exchange-direction up")
    (dk m (kbd "s-M-k")  "ratrelwarp 0 -7")
    (dk m (kbd "s-l")    "move-focus right")
    (dk m (kbd "s-L")    "move-window right")
    (dk m (kbd "s-C-l")  "exchange-direction right")
    (dk m (kbd "s-M-l")  "ratrelwarp 7 0")
    (dk m (kbd "s-m")    "master-focus")
    (dk m (kbd "s-M")    "master-swap 0")
    (dk m (kbd "s-C-m")  "master-make")
    (dk m (kbd "s-n")    "next-in-frame")
    (dk m (kbd "s-N")    "pull-hidden-next")
    (dk m (kbd "s-o")    "fullscreen") 
    (dk m (kbd "s-O")    "only") 
    (dk m (kbd "s-p")    "prev-in-frame")
    (dk m (kbd "s-P")    "pull-hidden-previous")
    (dk m (kbd "s-Q")    "rem-quit")
    (dk m (kbd "s-r")    "rem-loadrc")
    (dk m (kbd "s-R")    "rem-restart")
    (dk m (kbd "s-s")    *mplayer-daemon-map2*)
    (dk m (kbd "s-S")    *websearch-map*)
    (dk m (kbd "s-t")    *toggles-map*)
    (dk m (kbd "s-T")    "title")
    (dk m (kbd "s-u")    "undo")
    (dk m (kbd "s-U")    "repack-window-numbers")
    (dk m (kbd "s-v")    "show-window-properties")
    (dk m (kbd "s-V")    "list-window-properties")
    (dk m (kbd "s-w")    "echo-frame-windows")
    (dk m (kbd "s-W")    "windowlist")
    (dk m (kbd "s-x")    "putsel")
    (dk m (kbd "s-X")    "getsel")
    (dk m (kbd "s-C-x")  "window-send-string")
    (dk m (kbd "s-y")    "pine exec firefox http://")
    (dk m (kbd "s-Y")    "pine exec luakit http://")
    ;(dk m (kbd "s-Y")    "meta")
    (dk m (kbd "s-z")    "remove-split")
    ;; <function-key bindings>
    (dk m (kbd "XF86AudioMute")         "announce-oss-volmute")
    (dk m (kbd "XF86AudioRaiseVolume")  "announce-oss-volup")
    (dk m (kbd "XF86AudioLowerVolume")  "announce-oss-voldown")
    (dk m (kbd "XF86MonBrightnessUp")   "exec moodlight --increase")
    (dk m (kbd "C-XF86MonBrightnessUp") "exec moodlight --max")
    (dk m (kbd "XF86MonBrightnessDown") "exec moodlight --decrease")
    (dk m (kbd "s-F1")   "dump-group-to-file ~/.config/stumpwm/storage/group_1")
    (dk m (kbd "s-F2")   "dump-group-to-file ~/.config/stumpwm/storage/group_2")
    (dk m (kbd "s-F3")   "dump-group-to-file ~/.config/stumpwm/storage/group_3")
    (dk m (kbd "s-F4")   "dump-group-to-file ~/.config/stumpwm/storage/group_4")
    (dk m (kbd "s-F5")   "dump-group-to-file ~/.config/stumpwm/storage/group_5")
    (dk m (kbd "s-F6")   "dump-group-to-file ~/.config/stumpwm/storage/group_6")
    (dk m (kbd "s-F7")   "dump-window-placement-rules ~/.config/stumpwm/storage/placement_rules")
    (dk m (kbd "s-F9")   "dump-screen-to-file ~/.config/stumpwm/storage/screen_data")
    (dk m (kbd "F1")     "restore-from-file ~/.config/stumpwm/storage/group_1")
    (dk m (kbd "F2")     "restore-from-file ~/.config/stumpwm/storage/group_2")
    (dk m (kbd "F3")     "restore-from-file ~/.config/stumpwm/storage/group_3")
    (dk m (kbd "F4")     "restore-from-file ~/.config/stumpwm/storage/group_4")
    (dk m (kbd "F5")     "restore-from-file ~/.config/stumpwm/storage/group_5")
    (dk m (kbd "F6")     "restore-from-file ~/.config/stumpwm/storage/group_6")
    (dk m (kbd "F7")     "restore-window-placement-rules ~/.config/stumpwm/storage/placement_rules")
    (dk m (kbd "F9")     "restore-from-file ~/.config/stumpwm/storage/screen_data")
    (dk m (kbd "F10")    "restore-from-file /home/milo/.config/stumpwm/storage/screen_data_last")
    (dk m (kbd "s-quoteleft") "abort")
   ; (dk m (kbd "s-quoteleft") "scratchpad")
   M)))

