# Xournal++ Huion H610 Pro Mapping Plugin
Xournal++ plugin for mapping Huion H610 Pro tablet buttons to Xournal++ actions.

## Installation

This plugin assumes that the buttons on your tablet have been mapped to function keys 1 through 8 (F1-F8), in the following table's order.

| Button Action       | Button Number | Function Key |
|---------------------|---------------|--------------|
| Undo                | Button 1      | F1           |
| Eraser              | Button 2      | F2           |
| Pen                 | Button 3      | F3           |
| Zoom In             | Button 8      | F4           |
| Zoom Out            | Button 9      | F5           |
| Increase Brush Size | Button 10     | F6           |
| Decrease Brush Size | Button 11     | F7           |
| Hand                | Button 12     | F8           |

Note that the Button Numbers are only correct for the Huion H610 Pro. For other tablets, it may be easier to simply press the button and record the button number with [`xorg-xev`](https://www.x.org/releases/X11R7.7/doc/man/man1/xev.1.xhtml).

For example, with Huion H610 Pro tablets, the following commands should suffice.
```sh
$ xsetwacom set "<tablet pad>" Button 1 "key F1"
$ xsetwacom set "<tablet pad>" Button 2 "key F2"
$ xsetwacom set "<tablet pad>" Button 3 "key F3"
$ xsetwacom set "<tablet pad>" Button 8 "key F4"
$ xsetwacom set "<tablet pad>" Button 9 "key F5"
$ xsetwacom set "<tablet pad>" Button 10 "key F6"
$ xsetwacom set "<tablet pad>" Button 11 "key F7"
$ xsetwacom set "<tablet pad>" Button 12 "key F8"
```

Follow Xournal++'s instructions on installing a plugin [here](https://xournalpp.github.io/guide/plugins/). In particular, copy `HuionH610ProMappings` into the [plugin folder](https://xournalpp.github.io/guide/plugins/#installation-folder).
