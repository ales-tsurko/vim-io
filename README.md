# vim-io

[Io language](http://iolanguage.org/) syntax plugin for Vim.

This is a fork of https://github.com/simplosophy/vim-io and, honestly, without
any show offs this is the best vim syntax plugin for Io you'll find today.

It has:

- better indentation, including **closing bracket on the same line** style:
```io
    _checkDestinationSet := method(
        if (self destination isNil, 
            Exception raise(DestinationNotSetError clone)))
```
- better syntax highlighting with:
    - more stuff highlighted
    - spellchecking inside comments
    - documenation comments highlighting
    - TODO, FIXME, XXX highlighting in comments
