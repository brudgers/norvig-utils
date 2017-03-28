(defpackage :norvig-utils
  (:use :common-lisp)
  (;;; from eliza
   :export :get-bindings
           :binding-val
           :lookup
           :extend-bindings
   ;;; from general-problem-solver
           :member-equal
           :find-all
           :find-all-if
           :starts-with
           :mappend))

(in-package :norvig-utils)

(defsystem norvig-utils
  :serial t
  :components ((:file "norvig-utils")))
