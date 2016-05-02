# Vital

A minimally invasive CSS framework for modern web applications.

- Vital is a reverse approach to "everything and the kitchen sink" CSS frameworks.
- Built with Sass for readability and maintainability.
- No ridiculous amounts of classes or nesting. No excessively burried code.
- Written almost entirely in em values, allowing for easy and consistent scaling.
- Small, just 31KB (8KB gzipped) total size.
  - CSS: 22KB (6KB gzipped)
  - Font Icons: 9KB (2KB per file)
  - Javascripts: 0KB (none)

## Setup / Installation

Vital works best when manipulated directly so download or copy the `.sass` files
into your project. This installation method is preferred if you want to develop
your own unique branding while keeping code output to a minimum. One possible
caveat to this method is you sacrifice future upgradability as you may encounter
breaking changes.

### Rails

```
TODO: Write about usage with contents from tarball
```

### From sources

```
TODO: Write about usage with contents from tarball
```

## File Structure

```sass
// Vendor
@import vital/normalize

// If you are using Rails or another framework that leverages sprockets
//   @import vital/sprockets
// If you are using compass
//   @import vital/compass

// If you want to change colors, fonts, etc...
//   @import custom_variables

// Components
@import vital/variables
@import vital/icons
@import vital/grid

@import vital/base
@import vital/buttons
@import vital/footer
@import vital/forms
@import vital/header
@import vital/heroes
@import vital/loaders
@import vital/notice
@import vital/pagination
@import vital/tables
@import vital/tabs
@import vital/syntax
@import vital/helpers

// Customizations
//
// Styles that are very unique to specific pages or intended not to be re-used
// should be added here or on a custom partial and imported.
//   @import custom
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can
also run `bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org). After a gem release, you should also
build the tarball with framework sources that can be prepared with
`bundle exec rake vital:prepare_package` and uploaded to the corresponding
[GitHub tagged release](https://github.com/doximity/vital/releases).

### Documentation

Docs are built using the [middleman gem](https://middlemanapp.com/) and can be
found under the `website` dir. To hack on it:

```
cd website
bundle install
bundle exec middleman
```

And go to http://localhost:4567

Publishing docs to `gh-pages` is done automatically by running
`bundle exec rake publish` from within the `website` dir

### Compiling Font Icons

To compile font icons, you must first install [FontCustom gem dependencies](https://github.com/FontCustom/fontcustom#installation).

```bash
# On Mac
# Requires Ruby 1.9.2+, FontForge with Python scripting
brew install fontforge --with-python
brew install eot-utils

# On Linux
sudo apt-get install fontforge
wget http://people.mozilla.com/~jkew/woff/woff-code-latest.zip
unzip woff-code-latest.zip -d sfnt2woff && cd sfnt2woff && make && sudo mv sfnt2woff /usr/local/bin/
```

After installation is complete, run `bundle exec vital:compile_fonts`.

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/doximity/vital. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.
