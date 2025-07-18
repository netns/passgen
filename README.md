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

Generate a 16-character password with all character sets:

```bash
lua passgen.lua -l 16
```

Generate a 24-character password with no symbols:

```bash
lua passgen.lua -ns -l 24
```

Generate a password with only numbers:

```bash
lua passgen.lua -nl -nu -ns -l 10
```

Show help:

```bash
lua passgen.lua --help
```

## Example Output

```bash
$ lua passgen.lua -l 20

Generated Password:
────────────────────────
 *w8iv7@-Hrw#Z^xu!wby
────────────────────────
```
