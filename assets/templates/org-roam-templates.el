;;; org-roam-templates.el --- Templates for learning a language  -*- lexical-binding: t; -*-

;; Copyright (C) 2025  Rasmus Sten
;; Author: Rasmus Sten <rasmussten@hotmail.se>
;; Keywords:

;; This file is project-specific and should be located at:
;; <project-root>/assets/templates/org-roam-templates.el

;;; Commentary:

;; Define org-roam capture templates using org-capture syntax.
;; The variable `project-org-roam-templates' will be loaded by your capture function.

;;; Code:

(require 'nerd-icons nil t)

(defvar project-org-roam-templates
  `(
    ("n" ,(concat (nerd-icons-octicon "nf-oct-note"
                                      :face 'nerd-icons-silver
                                      :v-adjust 0.01)
                  "\tNote")
     plain
     "* %^{Title}\n:PROPERTIES:\n:ID: ${org-roam-id}\n:Date: %U\n:type: note\n:END:\n%?"
     :target (file+head "01_notes/%<%Y%m%d%H%M%S>-${slug}.org"
                        "#+title: ${title}\n#+filetags:\n")
     :unnarrowed t)
    
    ("w" ,(concat (nerd-icons-mdicon "nf-md-book_open_page_variant"
                                     :face 'nerd-icons-green
                                     :v-adjust 0.01)
                  "\tWord")
     plain
     "* %^{Vietnamese word}\n:PROPERTIES:\n:ID: ${org-roam-id}\n:type: %^{Type|noun|adjective|other}\n:created: %U\n:END:\nTranslation: %^{English translation}\nNotes: "
     :target (file+head "02_vocabulary/word_list.org"
                        "#+title: Word List\n")
     :unnarrowed t)

    ("p" ,(concat (nerd-icons-mdicon "nf-md-text_short"
                                     :face 'nerd-icons-pink
                                     :v-adjust 0.01)
                  "\tPhrase")
     plain
     "* %^{Phrase in Vietnamese}\n:PROPERTIES:\n:ID: ${org-roam-id}\n:created: %U\n:END:\nTranslation: %^{English translation}\nNotes: "
     :target (file+head "03_sentences/phrases.org"
                        "#+title: Phrases\n")
     :unnarrowed t)
    
    ("s" ,(concat (nerd-icons-mdicon "nf-md-format_text"
                                     :face 'nerd-icons-cyan
                                     :v-adjust 0.01)
                  "\tSentence")
     plain
     "* %^{Sentence in Vietnamese}\n:PROPERTIES:\n:ID: ${org-roam-id}\n:created: %U\n:END:\nTranslation: %^{English translation}\nNotes: "
     :target (file+head "03_sentences/sentences.org"
                        "#+title: Sentences\n")
     :unnarrowed t)
    
    ("d" ,(concat (nerd-icons-mdicon "nf-md-microphone_variant"
                                     :face 'nerd-icons-magenta
                                     :v-adjust 0.01)
                  "\tDrill")
     plain
     "* %^{Drill / Sentence}\n:PROPERTIES:\n:ID: ${org-roam-id}\n:type: drill\n:created: %U\n:END:\nNotes / Pronunciation: %?"
     :target (file+head "05_speaking/drills.org"
                        "#+title: Speaking Drills\n")
     :unnarrowed t))
  "Project-specific org-roam capture templates.")

(provide 'org-roam-templates)
;;; org-roam-templates.el ends here

