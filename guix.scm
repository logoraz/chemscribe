;;; ChemScribe -- A highly extensible Chemical Formula Builder & Molecular Editor
;;;               written in Guile
;;;
;;; Copyright (C) 2025  Erik P Almaraz <erikalmaraz@fastmail.com>
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU Affero General Public License as published
;;; by the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU Affero General Public License for more details.
;;;
;;; You should have received a copy of the GNU Affero General Public License
;;; along with this program.  If not, see <https://www.gnu.org/licenses/>.


;; GNU Guix development manifest. To start the Guile REPL:
;;
;;   guix shell -m path/to/manifest.scm -- sbcl
;;

(use-modules (guix packages)
             (gnu packages lisp)
             (gnu packages lisp-xyz)
             (gnu packages cl-clog))

(packages->manifest
 (list ccl
       ;; sbcl
       ;; clasp
       cl-iterate
       cl-clog))
