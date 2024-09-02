# Xournal++ Huion H610 Pro Mapping Plugin
Xournal++ plugin for mapping Huion H610 Pro tablet buttons to Xournal++ actions.

## Installation

This plugin assumes that buttons with no corresponding Xournal++ keybinds have been mapped to function keys.

| Button Action       | Button Number | Function Key |
|---------------------|---------------|--------------|
| Increase Brush Size | Button 10     | F1           |
| Decrease Brush Size | Button 11     | F2           |
| Hand                | Button 12     | F3           |

Note that the Button Numbers are only correct for the Huion H610 Pro. For other tablets, it may be easier to simply press the button and record the button number with [`xorg-xev`](https://www.x.org/releases/X11R7.7/doc/man/man1/xev.1.xhtml).

For example, with Huion H610 Pro tablets, the following commands should suffice.
```sh
$ xsetwacom set "<tablet pad>" Button 1 "key +ctrl z -ctrl"
$ xsetwacom set "<tablet pad>" Button 2 "key +ctrl +shift e -shift -ctrl"
$ xsetwacom set "<tablet pad>" Button 3 "key +ctrl +shift p -shift -ctrl"
$ xsetwacom set "<tablet pad>" Button 8 "key +ctrl 0xffab -ctrl"
$ xsetwacom set "<tablet pad>" Button 9 "key +ctrl 0xffad -ctrl"
$ xsetwacom set "<tablet pad>" Button 10 "key F1"
$ xsetwacom set "<tablet pad>" Button 11 "key F2"
$ xsetwacom set "<tablet pad>" Button 12 "key F3"
```

Follow Xournal++'s instructions on installing a plugin [here](https://xournalpp.github.io/guide/plugins/plugins/). In particular, copy `HuionH610ProMappings` into the [plugin folder](https://xournalpp.github.io/guide/plugins/plugins/#installation-folder).
