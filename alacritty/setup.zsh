export THEME_DIR='$HOME/dotfiles/alacritty/base16-alacritty/colors/'
LIGHT_COLOR='base16-tomorrow.yml'
DARK_COLOR='base16-ashes.yml'

alias day="alacritty-colorscheme -C $THEME_DIR -V apply $LIGHT_COLOR"
alias night="alacritty-colorscheme -C $THEME_DIR -V apply $DARK_COLOR"
alias toggle="alacritty-colorscheme -C $THEME_DIR -V toggle $LIGHT_COLOR $DARK_COLOR"
