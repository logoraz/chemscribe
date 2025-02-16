(defpackage :chemscribe/tests/base
  (:use :cl
        :rove)
  (:export #:test-suite))
(in-package :chemscribe/tests/base)

(deftest example-test
  42)
