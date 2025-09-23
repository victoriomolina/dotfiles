# dotfiles

Personal dotfiles for my development environment.  

This repo contains my **terminal, shell, and productivity configs**, managed with [`stow`](https://www.gnu.org/software/stow/).

## Overview

![Terminal Preview 1](assets/screenshots/WezTerm.png)
![Terminal Preview 2](assets/screenshots/WezTerm_tmux.png)
![Terminal Preview 3](./assets/screenshots/LazyVim.png)

## WezTerm keymap cheatsheet

| Shortcut         | Action                                   |
|------------------|------------------------------------------|
| Cmd + t          | New tab                                  |
| Ctrl + Shift + ← | Move tab left                            |
| Ctrl + Shift + → | Move tab right                           |
| Ctrl + Shift + R | Rotate panes (clockwise)                 |
| Cmd + Enter      | Smart split (horizontal or vertical)     |
| Ctrl + Shift + % | Horizontal split                         |
| Ctrl + Shift + " | Vertical split                           |
| Cmd + ←          | Focus pane left                          |
| Cmd + →          | Focus pane right                         |
| Cmd + ↑          | Focus pane up                            |
| Cmd + ↓          | Focus pane down                          |
| Cmd + c          | Copy to clipboard                        |
| Cmd + v          | Paste from clipboard                     |
| Cmd + X          | Activate *Copy Mode*                     |
| Cmd + u          | Scroll up (half page)                    |
| Cmd + d          | Scroll down (half page)                  |

> Note: On Windows, replace *Cmd* with *Ctrl*.

## LazyVim keymap cheatsheet

### Custom keymaps

| Shortcut        | Mode | Action                             |
|-----------------|------|------------------------------------|
| +               | n    | Increment number (Ctrl + a)        |
| -               | n    | Decrement number (Ctrl + x)        |
| dw              | n    | Delete word backwards              |
| Ctrl + a        | n    | Select all                         |
| Ctrl + m        | n    | Jumplist forward (Ctrl + i)        |
| t e             | n    | New tab                            |
| Tab             | n    | Next tab                           |
| Shift + Tab     | n    | Previous tab                       |
| s s             | n    | Horizontal split                   |
| s v             | n    | Vertical split                     |
| s h             | n    | Move to left pane                  |
| s k             | n    | Move to upper pane                 |
| s j             | n    | Move to lower pane                 |
| s l             | n    | Move to right pane                 |
| Ctrl + w + ←    | n    | Resize window (narrower)           |
| Ctrl + w + →    | n    | Resize window (wider)              |
| Ctrl + w + ↑    | n    | Resize window (taller)             |
| Ctrl + w + ↓    | n    | Resize window (shorter)            |
| Ctrl + j        | n    | Next diagnostic                    |

### LazyVim defaults (non-overridden)

| Shortcut        | Mode    | Action                          |
|-----------------|---------|---------------------------------|
| j / ↓           | n, x    | Move down (with `gj` behavior)  |
| k / ↑           | n, x    | Move up (with `gk` behavior)    |
| Ctrl + h        | n       | Focus pane left                 |
| Ctrl + j        | n       | Focus pane down                 |
| Ctrl + k        | n       | Focus pane up                   |
| Ctrl + l        | n       | Focus pane right                |
| Ctrl + ↑        | n       | Increase window height          |
| Ctrl + ↓        | n       | Decrease window height          |
| Ctrl + ←        | n       | Decrease window width           |
| Ctrl + →        | n       | Increase window width           |
| Opt + j         | n, i, v | Move line/selection down        |
| Opt + k         | n, i, v | Move line/selection up          |
| Shift + h       | n       | Previous buffer                 |
| Shift + l       | n       | Next buffer                     |
| [ b             | n       | Previous buffer                 |
| ] b             | n       | Next buffer                     |
| Leader + b b    | n       | Switch to other buffer          |
| Leader + `      | n       | Switch to last buffer           |
| Leader + b d    | n       | Delete current buffer           |
| Leader + b o    | n       | Delete all other buffers        |

