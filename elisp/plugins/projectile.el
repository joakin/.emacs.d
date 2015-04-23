
;; Projectile settings
(projectile-global-mode)
(setq projectile-enable-caching t)

;; Projectile stuff
(nmap "SPC p f" 'projectile-find-file)
(nmap "SPC p g" 'projectile-grep)
