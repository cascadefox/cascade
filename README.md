![Cascade Preview](assets/preview.webp)

**A minimalistic and keyboard centered userChrome**

Cascade aims to remove a lot of the subjective clutter default Firefox comes with. The theme is also highly inspired by the stylistic choices of [SimpleFox](https://github.com/migueravila/SimpleFox) 🦊 by [Miguel Ávila](https://github.com/migueravila).

This theme was known previously as »*ag.proton*« — but let's be honest: That sounds hella boring. What you get is a really simple adaptive layout that works well with the new Proton UI. By default — on larger screen resolutions – Cascade will transition to a Oneline layout which displays the URL Bar and Tab Bar next to each other. Smaller resultions will stack both UI elements on top of each other for better readability.

<br>

<div align="center">

  [![Stargazers](https://img.shields.io/github/stars/andreasgrafen/cascade?style=for-the-badge&color=F19066&labelColor=1E2021)](https://github.com/andreasgrafen/cascade/stargazers)
  [![Issues](https://img.shields.io/github/issues/andreasgrafen/cascade?style=for-the-badge&color=FC5C65&labelColor=1E2021)](https://github.com/andreasgrafen/cascade/issues)
  [![Discord](https://img.shields.io/discord/837559961194070026?label=FFCSS+Discord&style=for-the-badge&color=786FA6&labelColor=1E2021)](https://discord.gg/jrrw7Eg6sj)

  If you *really* like my work you can buy me a coffee to fuel further development.<br>
  While appreciated it's ofc by no means necessary. ♡<br><br>
  [![Buy me a Coffee <3](https://img.shields.io/static/v1?label=&message=Buy%20me%20a%20Coffee&style=for-the-badge&color=e6e9ef&labelColor=ccd0da&logo=kofi)](https://ko-fi.com/andreasgrafen)

</div>

## Previews

<details>
  <summary>:purple_square: Rosé Pine</summary>
  <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-rosepine.webp"/>
</details>
<details>
  <summary>:purple_circle: Catppuccin</summary>
  <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-ctp.webp"/>
  <details>
    <summary>Flavors</summary>
    <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-ctp-latte.webp"/>
    <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-ctp-frappe.webp"/>
    <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-ctp-macchiato.webp"/>
    <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-ctp-mocha.webp"/>
  </details>
</details>

## Usage

<details>
  <summary>:penguin: Linux</summary>

  - Default
  ```sh
  sh <(curl https://raw.githubusercontent.com/andreasgrafen/cascade/main/installer/default.sh)
  ```
  - gruvbox
  ```sh
  sh <(curl https://raw.githubusercontent.com/andreasgrafen/cascade/main/installer/gruvbox.sh)
  ```
  - rosepine-default
  ```sh
  sh <(curl https://raw.githubusercontent.com/andreasgrafen/cascade/main/installer/rosepine-default.sh)
  ```
  - rosepine-moon
  ```sh
  sh <(curl https://raw.githubusercontent.com/andreasgrafen/cascade/main/installer/rosepine-moon.sh)
  ```
  - catppuccin-frappe
  ```sh
  sh <(curl https://raw.githubusercontent.com/andreasgrafen/cascade/main/installer/catppuccin-frappe.sh)
  ```
  - catppuccin-macchiato
  ```sh
  sh <(curl https://raw.githubusercontent.com/andreasgrafen/cascade/main/installer/catppuccin-macchiato.sh)
  ```
  - catppuccin-mocha
  ```sh
  sh <(curl https://raw.githubusercontent.com/andreasgrafen/cascade/main/installer/catppuccin-mocha.sh)
  ```
  > **Note** On NixOS, you can modify `toolkit.legacyUserProfileCustomizations.stylesheets` by setting `"DisableProfileCustomizations": true` on your `policies` config, or execute one of the installer scripts using `post-build-hook = installer.sh`

  > **Note** You can configure it manually following the MacOS and Windows steps with the next path for Linux `$HOME/.mozilla/firefox/######.default-release/`
</details>

<details>
  <summary>:green_apple: MacOS & :window: Windows</summary>

  - Type `about:config` into your URL bar. Click on the **I accept the risk** button if you're shown a warning.
  - Seach for **`toolkit.legacyUserProfileCustomizations.stylesheets`** and set it to **`true`**.
  - Go to your profile folder:
      - MacOS: `Users/[USERNAME]/Library/Application Support/Firefox/Profiles/######.default-release`
      - Windows: `C:\Users\[USERNAME]\AppData\Roaming\Mozilla\Firefox\Profiles\######.default-release`
  - Copy the `chrome` folder into your profile and restart<sup>1)</sup> Firefox.
</details>

- Set your theme: You can change between multiple themes by replacing the content in `chrome/includes/cascade-colours.css` with one of the themes in `integrations/theme/theme.css`
- [Continue customizing as much as you want :heart:](#customization)

> **Note** If you're using Cascade I highly recommend to remove all clutter from the Navigation Bar area. To do so rightclick your bar and go into the customization settings. You can move all the icons freely which allows you to place your Addons within the Personal Toolbar for example.

> **Note** **⚠️ Error colours not applying**<br>
A workaround fix for this issue is to remove the colour include from the [main file](chrome/userChrome.css) and use [Firefox Color](https://addons.mozilla.org/en-GB/firefox/addon/firefox-color/) to apply [this custom theme](https://color.firefox.com/?theme=XQAAAAL8AAAAAAAAAABBKYhm849SCia2CaaEGccwS-xMDPr15o6H0LddKi1zZz7p7H23MOXwiWJCP8Eczt9O0cwm8bbmvpd20uiOFG8WawCZcXzraYdfXj2HrWgd4IgJK7QchIStW1KXpQGYxo9DHahUGJEmoKprdWRKoHPzcBH145YsTnnZq5DK71QEUg2RSwksm6Vs6Y7i7Y-4K-wFjfvAbb__jUJAAA) to apply Cascades default colours.

> **Note** **⚠️ Restart trouble**.<br>
If you're running into trouble with a restart seemingly not working you can navigate to `about:profiles` and click the »*Restart Normally*«-Button.<br>

> **Note** **⚠️ Attention Windows users**.<br>
It seems like `flexbox` (within the Firefox UI) is inheritly broken on Windows. In order to fix the One-Line layout on windows please substitute the [responsive include](chrome/includes/cascade-responsive.css) with the [version for windows](chrome/includes/cascade-responsive-windows-fix.css). This will ensure that the layout doesn't break **but** since it can't use `flexbox` the UI reordering does **not** work.<br>

## Customization

<details>
  <summary>:computer_mouse: Mouse support</summary>
  Cascade offers an [alternative config file](chrome/includes/cascade-config-mouse.css) that reintroduces some of the UI elements that are necessary to use Firefox with a mouse. To use these settings simply substitue the regular config include with the one for mouse support.

  This config brings back:
  * Navigation Buttons
  * the URL Bar Bookmark Button
  * the Hamburger Menu
  * Tab Close Buttons (on hover)

  If the buttons inside the URL Bar are off you may need to change the `--uc-page-action-margin` variable in the config as the necessary margin seems to differ depending on ones setup.
</details>

<details>
  <summary>:computer: Sort the UI</summary>
  In the [Cascade config](chrome/includes/cascade-config.css) you can set different ways of how the UI elements are layed out. The URL Bar, Tab Bar and Personal Toolbar can be arranged in different stacks; do you want the Toolbar to be on top or the URL and Tab Bar? Tabs on the left with the URL Bar to the right? No problem!

  ```css
  /*  Position of the Personal Toolbar
   *  possible values:
   *  0 – toolbar on top
   *  4 – toolbar on bottom
   */ --uc-toolbar-position: 0;
  ```

  ```css
  /*  Position of the URL Bar
   *  possible values:
   *  1 – tabs on the right
   *  3 – tabs on the left
   */ --uc-urlbar-position: 1;
  ```
  <!-- previews -->
  <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-toolbar-top.webp"/>
  <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-toolbar-bottom.webp"/>
  <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-urlbar-right.webp"/>
</details>

<details>
  <summary>:globe_with_meridians: URL bar customization</summary>
  You can freely set your desired URL Bar width from within the [config](chrome/includes/cascade-config.css) where the `min-width` setting is the default URL Bar width and `max-width` is the width of the focused URL Bar. Those can be different in order to make more room for the URL Bar when you actually want to use it.

  ```css
  /*  Width of the URL Bar for the Oneline layout
   *  If enabled the max-width is applied on focus
   *  otherwise the URL Bar will always be it's min-width
   */ --uc-urlbar-min-width: 30vw;
      --uc-urlbar-max-width: 45vw;
  ```

  If you set the `min-width` to `0vw` and the `max-width` to `100vw` you can also completely hide the URL Bar as long as it's not focused.

  <!-- previews -->
  <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-urlbar.webp"/>
</details>

<details>
  <summary>:red_circle: Online breakpoint</summary>
  If you'd like to have Cascade transition into it's Oneline layout on either smaller or larger sizes you can simply do so by changing the breakpoint value in the [responsive include](chrome/includes/cascade-responsive.css) file. If you don't want Cascade to break to the Oneline layout at all remove it from the [userChrome.css](chrome/userChrome.css) file

  ```css
  @media (min-width: 1000px) {

    […]

  }
  ```
</details>

<details>
  <summary>:vertical_traffic_light: Vertical tabs</summary>
  1. Download the [Tab Center Reborn Addon](https://addons.mozilla.org/en-GB/firefox/addon/tabcenter-reborn/)
  2. Copy the contents of [integrations/tabcenter-reborn/tabcenter-reborn.css](integrations/tabcenter-reborn/tabcenter-reborn.css) into the Addons settings
  3. Import the [integrations/tabcenter-reborn/cascade-tcr.css](integrations/tabcenter-reborn/cascade-tcr.css) into the [userChrome.css](chrome/userChrome.css)
  <!-- previews -->
  <img src="https://raw.githubusercontent.com/andreasgrafen/cascade/main/assets/cascade-tcr.webp"/>
</details>

<details>
  <summary>:bullettrain_side: Side view</summary>
  [Mozilla's Side View](https://addons.mozilla.org/en-GB/firefox/addon/side-view/) is an Addon that allows you to open a second Website within the Sidebar of your Browser. Cascades integration gets rid of the header, moves the »*Close*«-Button to the bottom, and allows the sidebar to be up to 50% of your browsers width.
  1. Download the [Side View Addon](https://addons.mozilla.org/en-GB/firefox/addon/side-view/)
  2. Import the [integrations/side-view/cascade-sideview.css](integrations/side-view/cascade-sideview.css) into the [userChrome.css](chrome/userChrome.css)
</details>

## Keyboard Shortcuts

This userstyle was made for a keyboard centered usage, like Tilling Window Manager users or just cool people that loves them!
These are **some** of the shortcuts that are available:

| Windows / Linux                              | MacOS                            | Description                         |
| -------------------------------------------- | -------------------------------- | ----------------------------------- |
| `Ctrl + L`                                   | `Command + L`                    | focuses the URL bar                 |
| `Ctrl + B`                                   | `Command + B`                    | toggles the bookmark sidebar        |
| `Ctrl + Shift + B`                           | `Command + Shift + B`            | toggles the personal toolbar        |
| `Alt + Left Arrow`                           | `Command + Left Arrow`           | navigates backwards in your history |
| `Alt + Right Arrow`                          | `Command + Right Arrow`          | navigates forwards in your history  |
| `Ctrl + T`                                   | `Command + T`                    | opens a new tab                     |
| `Ctrl + Shift + T`                           | `Command + Shift + T`            | reopens the last closed tab         |
| `Ctrl + W`                                   | `Command + W`                    | closes the current tab              |
| `Ctrl + Page Up`<br/>or `Ctrl + Shift + Tab` | `Command + Option + Left Arrow`  | navigates to the previous tab       |
| `Ctrl + Page Down`<br/>or `Ctrl + Tab`       | `Command + Option + Right Arrow` | navigates to the next tab           |

For the full list of shortcuts visit [the official Firefox website](https://support.mozilla.org/en-US/kb/keyboard-shortcuts-perform-firefox-tasks-quickly).
