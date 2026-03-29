-- Inative Painel - Loader com Whitelist
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Usuários autorizados
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

-- Carregar script ofuscado
loadstring(game:HttpGet("https://raw.githubusercontent.com/pkkkzj/inative-painel/main/InativePainel.lua"))()
