local LOWERCASE = "abcdefghijklmnopqrstuvwxyz"
local UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
local NUMBERS = "0123456789"
local SYMBOLS = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"

local function gen_password(charset, length)
	local password = {}
	local charset_length = #charset
	for i = 1, length do
		local rand_index = math.random(1, charset_length)
		password[i] = charset:sub(rand_index, rand_index)
	end
	return table.concat(password)
end

local function build_charset(opts)
    local charset = ""

    if not opts.no_lowercase then
        charset = charset .. LOWERCASE
    end
    if not opts.no_uppercase then
        charset = charset .. UPPERCASE
    end
    if not opts.no_numbers then
        charset = charset .. NUMBERS
    end
    if not opts.no_symbols then
        charset = charset .. SYMBOLS
    end

    if charset == "" then
        error("No charset selected!")
    end

    return charset
end

local function parse_args(args)
    local opts = {
        no_lowercase = false,
        no_uppercase = false,
        no_numbers = false,
        no_symbols = false,
        length = 32,
    }

    local i = 1
    while i <= #args do
        local arg = args[i]
        if arg == "-nl" or arg == "--no-lowercase" then
            opts.no_lowercase = true
        elseif arg == "-nu" or arg == "--no-uppercase" then
            opts.no_uppercase = true
        elseif arg == "-nn" or arg == "--no-numbers" then
            opts.no_numbers = true
        elseif arg == "-ns" or arg == "--no-symbols" then
            opts.no_symbols = true
        elseif arg == "-l" then
            i = i + 1
            local len = tonumber(args[i])
            if len == nil or len <= 0 then
                error("Invalid value for -l, must be a positive integer")
            end
            opts.length = len
        elseif arg == "-h" or arg == "--help" then
            print([[
Password Generator (Lua version)
Opções:
  -nl, --no-lowercase    Exclude lowercase
  -nu, --no-uppercase    Exclude uppercase
  -nn, --no-numbers      Exclude numbers
  -ns, --no-symbols      Exclude symbols
  -l <tamanho>           Password size (default: 32)
  -h, --help             Show usage
]])
            os.exit(0)
        else
            error("Unknown arg: " .. arg)
        end
        i = i + 1
    end

    return opts
end

math.randomseed(os.time())

local args = {...}

local opts = parse_args(args)
local charset = build_charset(opts)
local psswrd = gen_password(charset, opts.length)

print("\nGenerated Password:")
print(string.rep("─", opts.length + 4))
print("  " .. psswrd)
print(string.rep("─", opts.length + 4))
