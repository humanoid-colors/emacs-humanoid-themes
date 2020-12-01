# Humanoid-themes for Emacs

Humanoid theme is an Emacs color theme package that started as a theme for [spacemacs](https://github.com/syl20bnr/spacemacs).
The collection comes with a dark and a light variant and it should work well with true color and 256 color terminals.

## Screenshots

[![light theme](screenshots/Screenshot_2019-11-10_15-56-41.png)](screenshots/Screenshot_2019-11-10_15-56-41.png)

[![dark theme](screenshots/Screenshot_2019-11-10_15-58-39.png)](screenshots/Screenshot_2019-11-10_15-58-39.png)

## Highlights

The theme has good support for org mode.

## Installation

_todo_

## Supported modes

Some of the supported modes are:

* calfw
* company
* ein
* erc
* ESS modes (users may want to customize the variables ess-R-font-lock-keywords and inferior-ess-r-font-lock-keywords)
* gnus
* helm
* ido
* info
* ledger
* magit
* mu4e
* neotree
* org
* rainbow
* and others

## Customizations

The theme has some options that can be tweaked via `M-x customize`:

* `humanoid-comment-bg`:

This toggles a background color for the comment lines.

* `humanoid-comment-italic`:

This toggles italics for comments and will also add a lighter color to it. It is recommended to disable `humanoid-comment-bg` if you turn this option on for better contrast.

* `humanoid-keyword-italic`:

This toggles italics for keywords.

* `humanoid-org-agenda-height`:

This toggles the use of varying org agenda heights.

* `humanoid-org-bold`:

This toggles bold text for org headings.

* `humanoid-org-height`:

This toggles the use of varying org headings heights.

* `humanoid-org-highlight`:

This toggles highlighting of org headings.

* `humanoid-org-priority-bold`:

This toggles bold text for priority items in agenda view.

* `humanoid-custom-colors`:

This allows for specifying a list of custom colors to override humanoid theme colors. More details in the next section.

* `humanoid-underline-parens`:

This toggles the underline of matching parens when using `show-paren-mode` or similar.

### Override theme's colors

The theme can be customized by overriding one of the theme local variables by setting a list in the `humanoid-custom-colors` variable.
Here's a list of all the local variables and roles:

| var           | role                                                                                              |
|---------------|---------------------------------------------------------------------------------------------------|
| act1          | One of mode-line's active colors.                                                                 |
| act2          | The other active color of mode-line.                                                              |
| base          | The basic color of normal text.                                                                   |
| base-dim      | A dimmer version of the normal text color.                                                        |
| bg1           | The background color.                                                                             |
| bg2           | A darker background color. Used to highlight current line.                                        |
| bg3           | Yet another darker shade of the background color.                                                 |
| bg4           | The darkest background color.                                                                     |
| border        | A border line color. Used in mode-line borders.                                                   |
| cblk          | A code block color. Used in org's code blocks.                                                    |
| cblk-bg       | The background color of a code block.                                                             |
| cblk-ln       | A code block header line.                                                                         |
| cblk-ln-bg    | The background of a code block header line.                                                       |
| cursor        | The cursor/point color.                                                                           |
| const         | A constant.                                                                                       |
| comment       | A comment.                                                                                        |
| comment-bg    | The background color of a comment. To disable this, `customize` `humanoid-comment-bg`.     |
| comp          | A complementary color.                                                                            |
| err           | errors.                                                                                           |
| func          | functions.                                                                                        |
| head1         | Level 1 of a heading. Used in org's headings.                                                     |
| head1-bg      | The background of level 2 headings. To disable this, `customize` `humanoid-org-highlight`. |
| head2         | Level 2 headings.                                                                                 |
| head2-bg      | Level 2 headings background.                                                                      |
| head3         | Level 3 headings.                                                                                 |
| head3-bg      | Level 3 headings background.                                                                      |
| head4         | Level 4 headings.                                                                                 |
| head4-bg      | Level 4 headings background.                                                                      |
| highlight     | A highlighted area.                                                                               |
| highlight-dim | A dimmer highlighted area.                                                                        |
| keyword       | A keyword or a builtin color.                                                                     |
| lnum          | Line numbers.                                                                                     |
| mat           | A matched color. Used in matching parens, brackets and tags.                                      |
| meta          | A meta line. Used in org's meta line.                                                             |
| str           | A string.                                                                                         |
| suc           | To indicate success. Opposite of error.                                                           |
| ttip          | Tooltip color.                                                                                    |
| ttip-sl       | Tooltip selection color.                                                                          |
| ttip-bg       | Tooltip background color.                                                                         |
| type          | A type color.                                                                                     |
| var           | A variable color.                                                                                 |
| war           | A warning color.                                                                                  |


There is also explicit colors variables that can be customized:

* aqua
* aqua-bg
* green
* green-bg
* green-bg-s
* cyan
* red
* red-bg
* red-bg-s
* blue
* blue-bg
* blue-bg-s
* magenta
* yellow
* yellow-bg

The `green` and `red` colors have two background versions. The `green-bg` and  `red-bg` are normal light background colors.
The `green-bg-s`, `red-bg-s`, and `blue-bg-s` are a stronger version and are used in `ediff` and places were text is added, deleted or changed.

If you are using [spacemacs](https://github.com/syl20bnr/spacemacs), you can put this snippet in your `dotspacemacs/user-init` to override these colors:

```elisp
  (custom-set-variables '(humanoid-custom-colors
                          '((act1 . "#ff0000")
                            (act2 . "#0000ff")
                            (base . "#ffffff"))))
```

This will override `act1`, `act1` and `base` to use the specified colors.
