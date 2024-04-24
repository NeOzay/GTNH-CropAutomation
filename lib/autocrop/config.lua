---@class autocropConf
local config = {}
setmetatable(config, config)
config.load = function ()
    config.config = loadfile("/etc/autocrop/conf.lua")()
    config.__index = config.config
end

config.load()

return config