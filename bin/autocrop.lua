local shell = require("shell")
local filesystem = require("filesystem")

require("autocrop.config").load()

local args, opts = shell.parse(...)

if not args[1] then
	io.write([[
Provides a way to clone a Github Repositories or subpart of this.
Usage:
	run

	edit
]]
	)
end

if args[1] == "stat" then
	dofile("/bin/autocrop-program/stat.lua")
end

if args[1] == "spread" then
	dofile("/bin/autocrop-program/spread.lua")
end

if args[1] == "edit" then
	shell.execute('edit /etc/autocrop/conf.lua')
	return
end