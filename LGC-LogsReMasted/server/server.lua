Webhook = function(title, info, webhook, label)

    local discordInfo = {
        ["color"] = "9968335",
        ["type"] = "rich",
        ["title"] = title,
        ["description"] = info,
        ["footer"] = {
            ["text"] = 'Made By CoreBear#9995'
        },
        ["author"] = {
            ["name"] = label,
            ["url"] = '',
            ["icon_url"] = 'https://media.discordapp.net/attachments/798352712013709382/857372953280118804/Untitled_design_7.gif?width=450&height=450'
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = 'LGC Logs', avatar_url = "https://media.discordapp.net/attachments/798352712013709382/857372953280118804/Untitled_design_7.gif?width=450&height=450", embeds = { discordInfo } }), { ['Content-Type'] = 'application/json' })
end

AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local hex = GetPlayerIdentifier(source)
    Webhook("Player Connecting", "**Name: **"..name.."\n**Steam Hex: **"..hex.."\n**Date & Time: **"..(os.date("%B %d, %Y at %I:%M %p")), Config.Join, label)
end)

AddEventHandler('playerDropped', function(reason)
    local hex = GetPlayerIdentifier(source)
    Webhook("Player Disconnected", "**Name: **"..GetPlayerName(source).."\n**Steam Hex: **"..hex.."\n**Reason: **"..reason.."\n**Date & Time: **"..(os.date("%B %d, %Y at %I:%M %p")), Config.Leave, label)
end)

RegisterServerEvent("trappinrp:discordlog")
AddEventHandler("trappinrp:discordlog", function(title, info, webhook, label)
    Webhook(title, info, webhook, label)
end)
--[[
AddEventHandler('chatMessage', function(source, name, message)
    --for i = 0, 9 do
		--message = message:gsub('%^' .. i, '')
		--name = name:gsub('%^' .. i, '')
    --end
    newmsg = stringsplit(message, " ")
    for _, cmds in ipairs(Config.Commands) do
        if String[1]:lower() == cmds[1]:lower() then
            return true
        end
    end
end)
--]]
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function IsCommand(String, Type)
    for i, SpecialCommand in ipairs(SpecialCommands) do
        if String[1]:lower() == SpecialCommand[1]:lower() then
            return true
        end
    end
end
--[[
AddEventHandler("baseevents:onPlayerKilled", function(killerID, deathData)
    print(killerID, json.encode(deathData))
    --Webhook("Player Killed", "**Name: **"..GetPlayerName(source).."\n**Killed By: "..GetPlayerName(killerID).."\n**Weapon Used: **"..deathData.weaponHash.."\n**Date & Time: **"..(os.date("%B %d, %Y at %I:%M %p")), Config.Kills, 'Kills')
end)

AddEventHandler("baseevents:onPlayerDied", function(killerID, deathCoords)
    print(killerID, json.encode(deathCoords))
    --Webhook("Player Killed", "**Name: **"..GetPlayerName(source).."\n**Killed By: "..GetPlayerName(killerID).."\n**Weapon Used: **"..deathData.weaponHash.."\n**Date & Time: **"..(os.date("%B %d, %Y at %I:%M %p")), Config.Kills, 'Kills')
end)
--]]