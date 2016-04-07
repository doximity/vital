# Vital

A minimally invasive CSS framework for modern web applications.

- Vital is a reverse approach to "everything and the kitchen sink" CSS frameworks. Vital is a very small framework that is easy to learn and is very customizable.
- Built with Sass
- No ridiculous amounts of classes or nesting. No excessively burried code.
- Written almost entirely in em values, allowing for easy and consistent scaling.
- Small. CSS: 17KB, Font Icons: 8KB

# Setup / Installation

## Quickest (Compiled)

Import into stylesheet or as a stylesheet link tag:

`https://cdn.rawgit.com/doximity/vital/master/releases/v1.0.0/vital.min.css`

## Recommended (Source)

`https://github.com/doximity/vital/tree/master/source/stylesheets`

Vital works best when manipulated directly. Download or copy the slim files into your project. This installation method is preferred if you want to develop your own unique branding while keeping code output to a minimum. One possible caveat to this method is you sacrifice future upgradability as you may encounter breaking changes.

### File Structure

```sass
// Vendor
@import normalize

// Components
@import variables
@import icons
@import grid

@import base
@import buttons
@import footer
@import forms
@import header
@import heroes
@import loaders
@import notice
@import pagination
@import tables
@import tabs
@import helpers

// Customizations
@import custom
```

## Packages

A ruby gem and npm package installation options are in the works.

# Development Installation

The Vital project is build using a simple static generator: https://middlemanapp.com/

- Clone: `https://github.com/doximity/vital`
- In your terminal, run: `bundle`
- To start your server, run: `middleman`

### Compiling Font Icons

To compile font icons, you must first install fontforge and the fontcuston gem.

```bash
# On Mac
brew install fontforge --with-python
brew install eot-utils
gem install fontcustom
```

After installation is complete, run: `fontcustom compile`.

You must open `_icons.scss` and change `url` to `font-url`. While changing the `fontcustom.yml` templates flag from `scss` to `scss-rails` automatically does this, it also removes the very useful `$font-icons-` variables.
