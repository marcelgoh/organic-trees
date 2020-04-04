# Trees in PostScript

Programs that generate organic-looking trees in PostScript.

## Usage

Run `sh pdf.sh [filename]`, where `[filename].ps` is one of the PostScript files in the directory, to produce `[filename].pdf`. This requires you have `ps2pdf` on your system.

If PDFs aren't your jam, prepending the contents of `header.ps` to any other `*.ps` file should create viewable PostScript that you can then convert to whatever you like.

## Examples

A random binary search tree on 900 nodes:

![rbst](/examples/rbst.png)