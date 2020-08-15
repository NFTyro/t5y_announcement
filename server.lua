--********************************************************************
--                      T5Y_ANNOUNCEMENT
--
--                    CONTACT: @tahayavuuz
--********************************************************************
--FiveM: https://forum.fivem.net/u/tahayavuuz
--Github: https://github.com/tahayavuuz
--Discord: Taha Yavuz#0037



msg = ""
RegisterCommand('announcement', function(source, args, user) --Command to be typed.
	if (IsPlayerAceAllowed(source, "command")) then
			for i,v in pairs(args) do
				msg = msg .. " " .. v
			end
			TriggerClientEvent("alert", -1, msg)
			msg = ""
    end
end)
