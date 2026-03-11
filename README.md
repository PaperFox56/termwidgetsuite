# termwidgetsuite

My attempt at creating a terminal based widget suite, a small collection of C source files for drawing monochrome bitmap-style output in a terminal and a few example programs (clock, etc.). The project uses the Teye library, developped and maintained by me (github/PaperFox56/teye).

## Contents

- src/timer.c, src/timer.h — small cross-platform timing helpers
- src/clock.c — example program that draws a 7-segment-style clock into the TEYE buffer and renders it

## Requirements

- C compiler (gcc/clang)
- POSIX-compatible terminal (Linux, macOS). Windows may work but is untested.
