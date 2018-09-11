# -*- coding: utf-8 -*-

# PowerLevel9K configuration
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode os_icon context dir newline vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_VI_INSERT_MODE_STRING="|"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="$"
# Advanced `vi_mode` color customization
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='green'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='teal'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='yellow'

DEFAULT_USER="pti"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"


# change cursor shape
zle-keymap-select () {
  if [ "$TERM" = "xterm-256color" ]; then
    if [ $KEYMAP = vicmd ]; then
      # the command mode for vi
      echo -ne "\e[2 q"
    else
      # the insert mode for vi
      echo -ne "\e[5 q"
    fi
  fi
  zle reset-prompt
  zle -R
}
