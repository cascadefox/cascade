<br><br>
    
# Cascade
**A minimalistic and keyboard centered userChrome**

Cascade aims to remove a lot of the subjective clutter default Firefox comes with. The theme is also highly inspired by the stylistic choices of [SimpleFox](https://github.com/migueravila/SimpleFox) 🦊 by [Miguel Ávila](https://github.com/migueravila).

This theme was known previously as »*ag.proton*« — but let's be honest: That sounds hella boring. What you get is a really simple adaptive layout that works well with the new Proton UI. By default — on larger screen resolutions – Cascade will transition to a Oneline layout which displays the URL Bar and Tab Bar next to each other. Smaller resultions will stack both UI elements on top of each other for better readability.

**[Installation](#how-to-use-a-userchromecss-theme) • [Customisation](#customise-cascade-to-your-liking) • [Keyboard Shortcuts](#keyboard-shortcuts)**

<br>

[![Stargazers](https://img.shields.io/github/stars/andreasgrafen/cascade?style=for-the-badge&color=F19066&labelColor=1E2021)](https://github.com/andreasgrafen/cascade/stargazers)
[![Issues](https://img.shields.io/github/issues/andreasgrafen/cascade?style=for-the-badge&color=FC5C65&labelColor=1E2021)](https://github.com/andreasgrafen/cascade/issues)
[![Discord](https://img.shields.io/discord/837559961194070026?label=FFCSS+Discord&style=for-the-badge&color=786FA6&labelColor=1E2021)](https://discord.gg/jrrw7Eg6sj)

<br><br><br>

![Cascade Preview](assets/preview.webp)

<div align="center">
 
If you *really* like my work you can buy me a coffee to fuel further development.<br>
While appreciated it's ofc by no means necessary. ♡<br><br>
[![Buy me a Coffee <3](https://img.shields.io/static/v1?label=&message=Buy%20me%20a%20Coffee&style=for-the-badge&color=e6e9ef&labelColor=ccd0da&logo=kofi)](https://ko-fi.com/andreasgrafen)

</div>

<br><br><br>

## How to use a userChrome.css theme

1. Type `about:config` into your URL bar. Click on the **I accept the risk** button if you're shown a warning.
2. Seach for **`toolkit.legacyUserProfileCustomizations.stylesheets`** and set it to **`true`**.
3. Go to your profile folder:
  - Linux: `$HOME/.mozilla/firefox/######.default-release/`
  - MacOS: `Users/[USERNAME]/Library/Application Support/Firefox/Profiles/######.default-release`
  - Windows: `C:\Users\[USERNAME]\AppData\Roaming\Mozilla\Firefox\Profiles\######.default-release`
4. Copy the `chrome` folder into your profile.
5. Customise everything to your liking. (*optional*)

> **Note** If you're using Cascade I highly recommend to remove all clutter from the Navigation Bar area. To do so rightclick your bar and go into the customisation settings. You can move all the icons freely which allows you to place your Addons within the Personal Toolbar for example.

<br><br><br>

## Customise Cascade to your liking

<br>

### Colours

By default Cascade loads it's own colours which can be customised to fit your desired by simply changing the [colours include](chrome/includes/cascade-colours.css).
If you want to use Cascade with the Browsers default colours, or custom Firefox Themes like [Firefox Color](https://color.firefox.com) or even Addons like [Adaptive Tab Bar Color](https://github.com/YS-Wong/Adaptive-Tab-Bar-Color) simply remove the [colours include](chrome/includes/cascade-colours.css) from the [userChrome.css](chrome/userChrome.css) file.

<br>

### Sort the UI like you want it

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

<details>
<summary>Previews</summary>

![Toolbar on top](assets/cascade-toolbar-top.webp)
![Toolbar an the bottom](assets/cascade-toolbar-bottom.webp)
![URL Bar on the right](assets/cascade-urlbar-right.webp)

</details><br>

### URL Bar Customisation

You can freely set your desired URL Bar width from within the [config](chrome/includes/cascade-config.css) where the `min-width` setting is the default URL Bar width and `max-width` is the width of the focused URL Bar. Those can be different in order to make more room for the URL Bar when you actually want to use it.

```css
/*  Width of the URL Bar for the Oneline layout
 *  If enabled the max-width is applied on focus
 *  otherwise the URL Bar will always be it's min-width
 */ --uc-urlbar-min-width: 30vw;
    --uc-urlbar-max-width: 45vw;
```

If you set the `min-width` to `0vw` and the `max-width` to `100vw` you can also completely hide the URL Bar as long as it's not focused.

![Fully hidden URL Bar if unfocused](assets/cascade-urlbar.webp)

<br>

### Oneline Breakpoint

If you'd like to have Cascade transition into it's online layout on either smaller or larger sizes you can simply do so by changing the breakpoint value in the [responsive include](chrome/includes/cascade-responsive.css) file. If you don't want Cascade to break to the Oneline layout at all remove it from the [userChrome.css](chrome/userChrome.css) file

```css
@media (min-width: 1000px) {

  […]

}
```

<br><br><br>

## Integrations

### Tab Center Reborn — Vertical Tabs

![Tab Center Reborn Vertical Tabs Preview](assets/cascade-tcr.webp)

#### How to set it up
1. Download the [Tab Center Reborn Addon](https://addons.mozilla.org/en-GB/firefox/addon/tabcenter-reborn/)
2. Copy the contents of [integrations/tabcenter-reborn.css](integrations/tabcenter-reborn.css) into the Addons settings
3. Import the [includes/cascade-tcr.css](chrome/includes/cascade-tcr.css) into the [userChrome.css](chrome/userChrome.css)

<br><br><br>

## Keyboard Shortcuts

This userstyle was made for a keyboard centered usage, like Tilling Window Manager users or just cool people that loves them!
These are **some** of the shortcuts that are available:

Windows / Linux | MacOS | Description
--- | --- | ---
`Ctrl + L` | `Command * L` | focuses the URL bar
`Ctrl + B` | `Command + B` | shows you the bookmark sidebar
`Ctrl + Shift + B` | `Command + Shift + B` | shows you the bookmark toolbar
`Alt + Left Arrow` | `Command + Left Arrow` | navigates backwards in your history
`Alt + Right Arrow` | `Command + Right Arrow` | navigates forwards in your history
`Ctrl + T` | `Command + T` | opens a new tab
`Ctrl + Shift + T` | `Command + Shift + T` | reopens the last closed tab
`Ctrl + W` | `Command + W` | closes the current tab
`Ctrl + Page Up`<br/>or `Ctrl + Shift + Tab` | `Command + Option + Left Arrow` | navigates to the previous tab
`Ctrl + Page Down`<br/>or `Ctrl + Tab` | `Command + Option + Right Arrow` | navigates to the next tab

For the full list of shortcuts visit [the official Firefox website](https://support.mozilla.org/en-US/kb/keyboard-shortcuts-perform-firefox-tasks-quickly).‎

<br><br>
