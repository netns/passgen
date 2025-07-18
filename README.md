# Password Generator (CLI)

A simple and customizable command-line password generator written in Lua.

## Features

- Generate secure, random passwords
- Choose which character sets to include (lowercase, uppercase, digits, symbols)
- Define password length
- Easy to use, no external dependencies

## Installation

Clone the repository or copy the script locally:

```bash
git clone https://github.com/netns/passgen.git
cd passgen
```

## Usage

```bash
lua passgen.lua [options]
```

| Option                  | Description                       |
| ----------------------- | --------------------------------- |
| `--no-lowercase`, `-nl` | Exclude lowercase letters         |
| `--no-uppercase`, `-nu` | Exclude uppercase letters         |
| `--no-numbers`, `-nn`   | Exclude digits                    |
| `--no-symbols`, `-ns`   | Exclude symbols                   |
| `-l <length>`           | Set password length (default: 32) |
| `-h`, `--help`          | Show help message                 |

## Examples

For practical usage examples and sample outputs, please refer to the [`examples.md`](examples.md) file. 
It contains detailed command-line options and example runs to help you get started quickly.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
