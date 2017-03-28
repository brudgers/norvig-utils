;;; This file autogenerated from norvig-utils.org

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

;;; Functions that abstract over association lists

(defun get-bindings (var bindings)
  "Find a (variable . value) pair in a binding list."
  (assoc var bindings))

(defun binding-val (binding)
  "Get the value part of a single binding."
  (cdr binding))

(defun lookup (var bindings)
  "Get the value part (for var) from a binding list."
  (binding-val (get-bindings var bindings)))

(defun extend-bindings (var val bindings)
  "Add a (var . value) pair to a binding list."
  (cons (cons var val) bindings))

(defun member-equal (item list)
  "Test for membership in a list as set using equal."
  (member item list :test #'equal))

(setf (symbol-function 'find-all-if) #'remove-if-not)

(defun find-all (item sequence &rest keyword-args
                 &key (test #'eql)
                   test-not
                   &allow-other-keys)
  "Find all those elements of sequence that match item.
   according to the keywords. Does not alter sequence"
  (if test-not
      (apply #'remove item sequence
             :test-not (complement test-not) keyword-args)
      (apply #'remove item sequence
             :test (complement test) keyword-args)))

(defun starts-with (list x)
  "Is this a list whose first element is x?"
  (and (consp list)
       (eql (first list) x)))

(defun mappend (fn the-list)
  "Apply function to each element of the list and append the results."
  (apply #'append (mapcar fn the-list)))
