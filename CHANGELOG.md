# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.2.2.pre1] - 2020-02-21
### Changed
- Release on RubyGems using gem-publisher CircleCI Orb
- Packing gems

## [2.2.1]
- Fix an issue that caused the `range` input to be misaligned.

## [2.2.0]
- Add webpack convenience property to allow: `require('vital-css').includePaths`

## [2.1.1]
- Fix an issue that caused the mobile menu close icon not to show up.
- Update the README.md.

## [2.1.0]
- Remove `i.` font icon targeting from `_notice.sass` and refactor for use with an image tag
- Updated documentation with markup for notice bar
- Normalized, minified and resized all SVGs
- Updated documentation to reflect smaller size of Vital: 23KB

## [2.0.0]
- Remove fontcustom and font icon dependencies in favor of SVG
- Remove support for IE8/IE9
- Remove default font weight for some tags
- Multiplier classes`.i2x`, `.i3x`, `.i4x`, `.i5x` renamed to: `.x2`, `.x3`, `.x4`, `.x5`
- Added default opacity classes
- Added background variables
- Added `_mixins`
- Added text anti-aliasing is enabled by default
- Added `/layouts` to documentation website
- Revamped documentation

## [1.1.0]
- Add command: `rake vital:compile_fonts`
- `icons` partial is now a `.sass` file
- The need to manually rename `url` to `font-url` in `icons` partial is no longer required
- Remove the need to install the fontcustom gem manually
- Updated the font input and output paths
- Fix a typo
- Add `!default` to variables

## [1.0.1]
- Scope the nav to `.header` class
- Fix incorrect naming of a breakpoint
- Whitespace consistency changes in `_variables`

## [1.0.0]
- Initial release
