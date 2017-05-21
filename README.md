Introduction to Learning Scala
==============================

A talk given for the [inaugural meetup] of [Bangkok Functional Programmers][bangkok-fp] in May of 2017. This repository holds the source for the slides, made with the venerable combination of Pandoc and reveal.js.

[The rendered presentation is here][presentation].

The objective of this talk was not to teach basics of Scala but to share reasons why learning the language might be worthwhile, especially as a gateway to more (typed) functional programming practices without giving up productivity in the OOP comfort zone at the start. See [the full abstract](ABSTRACT.md).

Notes to Self
-------------

Pandoc's `--slide-level=2` makes reveal's vertical builds work for `<H2>`s.

Pandoc's `default.revealjs` template doesn't include highlight.js, probably
because Pandoc wants to use its own highlighting. But that doesn't work out as
nicely, so I customized the template just to add back highlight.js.

### Build ###

    $ brew install pandoc tidy-html5
    $ make
    $ open index.html

### Present ###

Useful reveal.js shortcuts:

  - `?` for shortcut summary
  - `h` / `j` / `k` / `l` to navigate slides, Vim-style
  - `o` to open the slide overview
  - `s` to open speaker notes in separate window

Speaker notes work well enough for me from static files without running reveal.js's Node server. Running time doesn't work, but oh well. No need to touch the submodule directory to serve.

[inaugural meetup]: https://www.meetup.com/bangkok-fp/events/239540869/
[bangkok-fp]: https://www.meetup.com/bangkok-fp/
[presentation]: http://ches.github.io/intro-to-learning-scala/
