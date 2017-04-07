_Post v1.1.0 releases changelog can be found on https://github.com/doximity/vital/releases_

v2.1.0
  - Remove `i.` font icon targeting from `_notice.sass` and refactor for use with an image tag
  - Updated documentation with markup for notice bar
  - Normalized, minified and resized all SVGs
  - Updated documentation to reflect smaller size of Vital: 23KB

v2.0.0
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

v1.1.0
  - Add command: `rake vital:compile_fonts`
  - `icons` partial is now a `.sass` file
  - The need to manually rename `url` to `font-url` in `icons` partial is no longer required
  - Remove the need to install the fontcustom gem manually
  - Updated the font input and output paths
  - Fix a typo
  - Add `!default` to variables

v1.0.1
  - Scope the nav to `.header` class
  - Fix incorrect naming of a breakpoint
  - Whitespace consistency changes in `_variables`

v1.0.0
  - Initial release
