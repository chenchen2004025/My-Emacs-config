(require 'package)
;; 增加软件包仓库
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(when (< emacs-major-version 24)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
;; 定义require-package函数
(defun require-package (package &optional min-version no-refresh)
"Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
(if (package-installed-p package min-version)
t
(if (or (assoc package package-archive-contents) no-refresh)
(package-install package)
(progn
(package-refresh-contents)
(require-package package min-version t)))))
;; 强行提前初始化ELPA。因为默认情况下Emacs在init.el加载完之后才开始初始化ELPA，
;; 而我们把大多数包的初始化函数都放在init.el中，如果不提前初始化ELPA会导致后面的
;; 初始化过程出错（对应的包文件还没有加载进来）。
(package-initialize)
(provide 'init-elpa)

(global-linum-mode t);显示行号
(set-scroll-bar-mode nil);;取消滚动栏

;;;;;;;;;;;;;;;;;;;;;;;;;;;; 显示时间设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上  
(setq display-time-24hr-format t);;时间使用24小时制  
(setq display-time-day-and-date t);;时间显示包括日期和具体时间  
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置  
(setq display-time-interval 10);;时间的变化频率，单位多少来着？
(fset 'yes-or-no-p 'y-or-n-p)
(mouse-avoidance-mode 'animate)  
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (light-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "monotype" :slant normal :weight normal :height 158 :width normal)))))

(require 'auto-complete-config)
(global-auto-complete-mode t)

