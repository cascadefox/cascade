#!/bin/sh
DEFAULT_FIREFOX_PROFILE=$(grep 'Path=' "$firefox_profiles_dir/profiles.ini" | cut -d= -f2)
rm $HOME/.mozilla/firefox/$DEFAULT_FIREFOX_PROFILE/chrome -rf
cd $HOME/.mozilla/firefox/$DEFAULT_FIREFOX_PROFILE
git clone https://github.com/iruzo/cascade && mv cascade/chrome .

# configure desired theme
if [ "$#" -gt 0 ]; then
  mv cascade/integrations/cascade-$1.css chrome/includes/cascade-colours.css
  rm cascade -rf
fi

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
