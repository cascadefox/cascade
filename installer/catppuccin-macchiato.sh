#!/bin/sh
DEFAULT_FIREFOX_PROFILE=$(ls $HOME/.mozilla/firefox/ | grep default | awk -F' ' '{print $NF}')
rm $HOME/.mozilla/firefox/$DEFAULT_FIREFOX_PROFILE/chrome -rf
cd $HOME/.mozilla/firefox/$DEFAULT_FIREFOX_PROFILE
git clone https://github.com/iruzo/cascade && mv cascade/chrome .
mv cascade/integrations/catppuccin/cascade-macchiato.css chrome/includes/cascade-colours.css
rm cascade -rf

# change toolkit.legacyUserProfileCustomizations.stylesheets
if [ ! -e "$HOME/.mozilla/firefox/$DEFAULT_FIREFOX_PROFILE/prefs.js" ]; then
  echo "File 'foo' does not exist."
  exit 1
fi

if grep -q "user_pref(\"toolkit.legacyUserProfileCustomizations.stylesheets\", true);" "$HOME/.mozilla/firefox/$DEFAULT_FIREFOX_PROFILE/prefs.js"; then
  echo "legacyUserProfileCustomizations is already true on users settings"
else
  echo "user_pref(\"toolkit.legacyUserProfileCustomizations.stylesheets\", true);" >> "$HOME/.mozilla/firefox/$DEFAULT_FIREFOX_PROFILE/prefs.js"
fi
