;;; -*- Mode: lisp -*-

(in-package :asdf-user)

(defsystem "series"
    :description "See <http://series.sourceforge.net/>."
    :author "Richard C. Waters"
    :maintainer "See <http://series.sourceforge.net/>."
    :licence "MIT"
    :version "2.2.11"
    :in-order-to ((test-op (test-op "series/tests")))
    :serial t
    :components ((:file "s-package")
                 (:file "s-code")))

(defsystem "series/tests"
  :depends-on ("series")
  :version "2.2.11"            ; Same as series
  :in-order-to ((test-op (load-op "series")))
  :perform (test-op (o s)
             (or (funcall (intern "DO-TESTS" (find-package "RT")))
                 (error "TEST-OP failed for series/tests")))
  :components
  ((:file "s-test")))
