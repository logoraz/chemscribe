;;; ChemScribe -- A highly extensible Chemical Formula Builder & Molecular Editor
;;;               written in Common Lisp.
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

;;; Commentary:
;;;

(defpackage #:chemscribe/core/database
  (:use #:cl
        #:iterate) ;; for extended iteration capabilities
  (:export #:simple-db))
(in-package #:chemscribe/core/database)


(defun simple-db (&optional (n 11))
  "Simple 'Mock' database for testing."
  (loop :for i :from 0 :below n
        :collect (list i
                       (format nil "Raw material ~A" i)
                       (/ i n))))
