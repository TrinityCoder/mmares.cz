---
layout: post
title:  "CMake syntax highlighting in Atom editor"
date:   2020-12-09 5:42:00 +0100
categories: [blog, atom, cmake, syntax]
comments: true
---
The [`language-cmake`][1] package had been the most used CMake
syntax highlighter for [Atom][2]. However, the package
was discontinued in May 2019, approximately corresponding
to CMake 3.14.

## My 'language-cmake-2' fork
I have [forked the project][3] and updated it to the current
CMake version (3.19.2). I plan to keep it up-to-date
in the future.

## How to install the new package?
The `language-cmake-2` is a direct fork of the original package.
To install it, first uninstall the old one and then install
the new one:

```sh
apm uninstall --hard language-cmake
apm install language-cmake-2
```
<!-- more -->

Issues and pull requests are welcome!

[1]: https://github.com/lucas-clemente/language-cmake
[2]: https://atom.io/
[3]: https://github.com/TrinityCoder/language-cmake-2
