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

Add `vital` to your Gemfile:

```ruby
gem 'vital'
```

`bundle install` and restart your server to make the files available through
the pipeline.

Import Vital styles in `app/assets/stylesheets/application.sass` or equivalent:

```sass
// Custom vital variables must be set or import before vital itself.
@import "vital/sprockets"
@import "vital/all"
```

Or import each [`sass` partial](assets/stylesheets/vital) individually into your
`sass` stylesheet as described on the [file structure](#file-structure) section
below.

For a live documentation of your CSS components, add the following to your
`config/routes.rb`:

```ruby
Rails.application.routes.draw do
  mount Vital::Engine, at: "/components"
end
```

And add [slim](https://github.com/slim-template/slim) to your project.

If you need to customize that page, copy the
[default slim template](app/views/vital_components/index.html.slim) to your project's
`app/views/vital_components/index.html.slim` and the
[components sass stylesheet](assets/stylesheets/vital-components.css.sass) to
`app/assets/stylesheets/vital-components.css.sass`.

Custom generators

### From sources

```
TODO: Write about usage with contents from tarball
```

## File Structure

```sass
// Vendor

@import vital/normalize

// If you are using Rails or another framework that leverages sprockets
// @import vital/sprockets

// If you are using compass
// @import vital/compass

// If you want to change colors, fonts, etc...
// @import my_custom_variables

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

// Styles that are very unique to specific pages or intended not to be re-used
// should be added here or on a custom partial and imported.
// @import custom
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
release the tarball with framework sources with `bundle exec rake gh_release`
so that it gets uploaded to the
[corresponding GitHub release](https://github.com/doximity/vital/releases)
and to ensure that our releases have a changelog in place.

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
