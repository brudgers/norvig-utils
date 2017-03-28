(defpackage :norvig-debugger
  (:use :common-lisp)
  (:export :*dbg-ids*
           :dbg
           :start-debug
           :undebug
           :dbg-indent))

(in-package :norvig-debugger)

(defsystem norvig-debugger
  :serial t
  :components ((:file "norvig-debugger")))
