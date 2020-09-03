--********************************************************************
--                      T5Y_ANNOUNCEMENT
--
--                    CONTACT: @tahayavuuz
--********************************************************************
--FiveM: https://forum.fivem.net/u/tahayavuuz
--Github: https://github.com/tahayavuuz
--Discord: Tyro#9999
--Discord Server: https://discord.gg/AsEkThT


alertstring = false
lastfor = 5
doalert = false

RegisterNetEvent('alert')
announcestring = false
AddEventHandler('alert', function(msg)
	alertstring = msg
	doalert = true
	PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", 1)
	AddTextEntry("FACES_WARNH2", "Warning")
	AddTextEntry("QM_NO_0", alertstring)
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if doalert then
			if IsControlJustPressed(13,201) then
				PlaySoundFrontend(-1, "Well", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1);
				doalert = false
				alertstring = false
			end
			DrawFrontendAlert("FACES_WARNH2", "QM_NO_0", 2, nil, "", 0, 0, false, "FM_NXT_RAC", 1, true, false)
		end
	end
end)

