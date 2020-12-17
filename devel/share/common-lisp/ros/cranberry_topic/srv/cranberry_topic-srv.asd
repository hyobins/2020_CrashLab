
(cl:in-package :asdf)

(defsystem "cranberry_topic-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CommLight" :depends-on ("_package_CommLight"))
    (:file "_package_CommLight" :depends-on ("_package"))
  ))