local function DisplayScare(display)
    SendNUIMessage({action = 'scare', show = display})
end

RegisterNetEvent('Jumpscare:Scare', function(Displaytime)
	DisplayScare(true)

	Wait(Displaytime or 5000)

	DisplayScare(false)
end)