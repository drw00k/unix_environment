;;;(require 'ess-site)                                                                                                                                                         

(setq load-path (cons (expand-file-name "/Users/rsowers/.emacs.d/lisp")
                      load-path))

;;; Emacs speaks statistics                                                                                                                                                    
(load "/Users/rsowers/projects/personal_software/emacs/ess-5.14/lisp/ess-site.el")
(require 'ess-site)

;;; Load the template program                                                                                                                                                  
(require 'template)
(template-initialize)

;;; Update string in the first 8 lines looking like Timestamp: <> or " "                                                                                                       
;;; (setq time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S %u %f")                                                                                                              
(setq time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S")
(add-hook 'write-file-hooks 'time-stamp)

;; A function to insert the time stamp at point.                                                                                                                               
(defun stamp ()
  "Insert at point the dummy time stamp string to activate the time stamp facility."
  (interactive "*")
  (insert "Time-stamp: <>")
  (time-stamp)
  )

(put 'downcase-region 'disabled nil)

(put 'upcase-region 'disabled nil)
