-- Imports.
import XMonad
import XMonad.Util.Ungrab
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.SetWMName

-- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

-- startupHook
myStartupHook = do
  spawn "~/dotfiles/xmonad/autostart.sh"
  setWMName "LG3D"

-- Main configuration, override the defaults to your liking.
myConfig = def 
  { modMask = mod4Mask 
  , terminal = "alacritty"
  , startupHook = myStartupHook
  }
  `additionalKeysP`
  [ ("M-S-z", spawn "slock")
  , ("M-S-=", unGrab *> spawn "scrot -s /tmp/screenshot.png && xclip -selection clipboard -t image/png -i /tmp/screenshot.png && rm /tmp/screenshot.png")
  , ("M-]"  , spawn "chromium")
  ]

