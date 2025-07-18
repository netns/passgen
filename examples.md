# Password Generator Examples

### Generate a password with default settings (32 characters)

```bash
lua passgen.lua

Generated Password:
────────────────────────────────────
  %Veb+)ASa_z"?c4<_]@d\JG1,ViDjls/
────────────────────────────────────
```

### Generate a password with 16 characters

```bash
lua passgen.lua -l 16

Generated Password:
────────────────────
  KEmkTmz\w>L;9p:<
────────────────────
```

### Generate a password without lowercase letters

```bash
lua passgen.lua --no-lowercase

Generated Password:
────────────────────────────────────
  X2?U-S%H,N#]6Z2->N,R|_LQL%#)_V[R
────────────────────────────────────
```

```bash
lua passgen.lua -nl

Generated Password:
────────────────────────────────────
  <V|GREMILFNW%9:)(H>-3.Z(VLE3R#?C
────────────────────────────────────
```

### Display help message

```bash
lua passgen.lua -h

Password Generator (Lua version)
Options:
  -nl, --no-lowercase    Exclude lowercase letters
  -nu, --no-uppercase    Exclude uppercase letters
  -nn, --no-numbers      Exclude numbers
  -ns, --no-symbols      Exclude symbols
  -l <length>            Specify the password length (default 32)
  -h, --help             Show this help message
```

### Generate a password without numbers and symbols, 24 characters long

```bash
lua passgen.lua -nn -ns -l 24

Generated Password:
────────────────────────────
  VNejilVeLXjpYcwgyLovYMhk
────────────────────────────
```
