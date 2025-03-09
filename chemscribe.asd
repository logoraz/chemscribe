;;; Notes
;;; How to set up The Package Defferred System
;;; * https://asdf.common-lisp.dev/asdf/\
;;;   The-package_002dinferred_002dsystem-extension.html
;;;
;;; * https://github.com/fare/lisp-interface-library/
;;;
;;; * https://lispcookbook.github.io/cl-cookbook/testing.html

#-asdf3.1 (error "Chemscribe requires ASDF 3.1.2 or later.")

(defsystem #:chemscribe
  :description "Extensible Chemical Formula Builder & Molecular Editor."
  :author "Erik Almaraz <erikalmaraz@fastmail.com>"
  :license "AGPLv3"
  :version "0.0.1"
  :class :package-inferred-system
  :depends-on ("iterate"
               "transducers"
               ;; "cl-treesitter"
               "chemscribe/core/all"
               "chemscribe/library/learncl/all")
  :in-order-to ((test-op (test-op "chemscribe/tests"))))


(defsystem "chemscribe/tests"
  :class :package-inferred-system
  :depends-on ("rove"
               "chemscribe/tests/all")
  :perform (test-op (o c) (symbol-call #:chemscribe/tests/all #:run-all-tests)))


(register-system-packages "chemscribe/core/all" '(#:chemscribe))
(register-system-packages "chemscribe/library/learncl/all" '(#:learncl))
(register-system-packages "chemscribe/tests/all" '(#:tests))

(register-system-packages
 "closer-mop"
 '(:c2mop :closer-common-lisp :c2cl :closer-common-lisp-user :c2cl-user))
