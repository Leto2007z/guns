RegisterCommand('clearweapons', function ()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify('~r~Удалить всё оружие')
end)

CreateThread(function ()
    local h_key = 74
    local x_key = 73
    
    while true do
        Wait(1)
        if IsControlJustReleased(1, h_key) then
            giveWeapon('weapon_heavyrifle')
            giveWeapon('weapon_pistol_mk2')
            giveWeapon('weapon_knuckle')
            alert("~g~Выдано оружие с помощью ~INPUT_VEH_HEADLIGHT~")
        elseif IsControlJustReleased(1,  x_key) then
            giveWeapon("weapon_combatmg")
            alert("~g~Выдано оружие с помощью ~INPUT_VEH_DUCK~")
        end
    end
end)