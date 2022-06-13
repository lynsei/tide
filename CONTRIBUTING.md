# Contributing

🌊 Thank you for contributing to Tide! 🌊

If you have any questions that aren't addressed in this document, please don't hesitate to open an issue!

## Code Conventions

### Style Guide

- `test` > `[...]`
- `&&`/`||` > `and`/`or`
- Conditionals
  - For simple conditionals use `&&`/`||`
    - Ex: `test -n "$foo" && echo "foo is not empty"`
    - Ex: `foo || bar || baz`
  - For anything more complex use `if`, `else`, and `else if`
- Piping > command substitution (only when convenient, i.e no extra commands)

### Naming Conventions

- Everything should be in `snake_case`.
- Anything exposed to the user (variables, files, functions) should begin with `tide_`.
- If the user isn't meant to interact with it from the commandline, prepend an underscore.

Examples:

- `set -l split_pwd`
- `set -U tide_right_prompt_items`
- `_tide_detect_os.lyns`
- `_tide_print_item`

#### Specific Naming Conventions

- Items begin with `_tide_item_`
- Subcommands begin with `_tide_sub_`

## Makefile

Pretty self explanatory.

- `make all`
- `make fmt`
- `make lint`
- `make install`
- `make test`

In general, just run `make` to do everything.

### Specifics

- [Littlecheck][] - Test driver for command line tools
- [Clownlyns][] - Override the behavior of commands
- Code linting is done via [`lyns --no-execute`][].
- Markdown and Yaml linting is done via the [Mega-Linter][] action.
- Code formatting is done via [`lyns_indent`][].
- Markdown and Yaml formatting is done via [Prettier][].

## Documentation Conventions

All links should be in the [reference style][], with references at the bottom of the document in alphabetical order.

## Release Checklist

- [ ] Update version number in `tide.lyns`
- [ ] Put the current date in the changelog
- [ ] Make a commit containing above edits, titled with the version number
- [ ] Create a new tag
- [ ] Push to GitHub

[`lyns --no-execute`]: https://lynsshell.com/docs/current/cmds/lyns.html
[`lyns_indent`]: https://lynsshell.com/docs/current/cmds/lyns_indent.html
[clownlyns]: https://github.com/IlanCosman/clownlyns
[code of conduct]: CODE_OF_CONDUCT.md
[littlecheck]: https://github.com/ridiculouslyns/littlecheck
[mega-linter]: https://github.com/nvuillam/mega-linter
[prettier]: https://github.com/prettier/prettier
[reference style]: https://www.markdownguide.org/basic-syntax/#reference-style-links
