RegisterServerEvent("sendDiscordMessage")
AddEventHandler("sendDiscordMessage", function()
    local discordMessage = {
        ["content"] = "There are more police required in the Strife Roleplay - Remastered server <@&1186425577431912540> !"
    }

    PerformHttpRequest(Config.DISCORD_WEBHOOK_URL, function(err, text, headers) end, 'POST', json.encode(discordMessage), { ['Content-Type'] = 'application/json' })
end)
