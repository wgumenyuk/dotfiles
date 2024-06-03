alias x="exit"
alias cls="clear"

if command -v xclip &> /dev/null; then
  alias copy="xclip -selection primary"
fi

if command -v gnome-screensaver-command &> /dev/null; then
  alias screensaver="gnome-screensaver-command --activate"
fi
