
(cl:in-package :asdf)

(defsystem "nimo_end_effector-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "act_linear" :depends-on ("_package_act_linear"))
    (:file "_package_act_linear" :depends-on ("_package"))
    (:file "get_cal_dat" :depends-on ("_package_get_cal_dat"))
    (:file "_package_get_cal_dat" :depends-on ("_package"))
    (:file "get_dat" :depends-on ("_package_get_dat"))
    (:file "_package_get_dat" :depends-on ("_package"))
  ))