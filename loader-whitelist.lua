local Players = game:GetService("Players")
local player = Players.LocalPlayer

local whitelist = {"doxepinas", "HeellcatX"}

local function isWhitelisted()
    for _, username in ipairs(whitelist) do
        if player.Name == username then
            return true
        end
    end
    return false
end

if not isWhitelisted() then
    player:Kick("Você não tem permissão para usar este script.")
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/pkkkzj/inative-painel/main/InativePainel.lua"))()
