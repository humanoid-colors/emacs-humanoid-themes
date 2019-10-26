;;; humanoid-theme.el --- Color theme with a dark and light versions. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'humanoid)
;;; humanoid-theme.el ends here