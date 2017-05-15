# Jekyll::Codepen

[![Gem Version](https://badge.fury.io/rb/jekyll-codepen.svg)](http://badge.fury.io/rb/jekyll-codepen)

<!-- Tocer[start]: Auto-generated, don't remove. -->

# Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [Usage](#usage)
- [Versioning](#versioning)
- [Code of Conduct](#code-of-conduct)
- [Contributions](#contributions)
- [License](#license)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

# Features

Easily embeds codepens into your Jekyll projects.

# Requirements

* [Ruby 2.x.x](https://www.ruby-lang.org)
* Jekyll

# Setup

Add the following to your Gemfile:

```ruby
gem "jekyll-codepen"
```

(Optionally) Add the following to `config.yml`

```yaml
gems:
  - jekyll-codepen

codepen:
  theme: 11473
  height: 300
  preview: false
  default_tab: result
```


# Usage

```
{% codepen https://codepen.io/blindingstars/pen/wBexpr %}
```

or with any of the config options from above

```
{% codepen https://codepen.io/blindingstars/pen/wBexpr height=800 preview=true %}
```

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Major (X.y.z) - Incremented for any backwards incompatible public API changes.
- Minor (x.Y.z) - Incremented for new, backwards compatible, public API enhancements/fixes.
- Patch (x.y.Z) - Incremented for small, backwards compatible, bug fixes.

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By
participating in this project you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2017 [Rob McFadzean](https://github.com/rmcfadzean).
Read [LICENSE](LICENSE.md) for details.
