_Post v1.1.0 releases changelog can be found on https://github.com/doximity/vital/releases_

v2.0.0
  - Removed fontcustom and font icon dependencies in favor of SVG
  - Removed IE8/IE9 specific overrides as they are no longer supported
  - Removed `font-weight` on most tags in `_base.sass`
  - Text anti-aliasing is enabed by default
  - Add to documentation

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
