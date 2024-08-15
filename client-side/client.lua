local isSwimming = false
Citizen.CreateThread(function()
  while true do
    local ped = PlayerPedId()
    if IsPedSwimming(ped) then
      if not isSwimming then
        isSwimming = true
        TriggerServerEvent('waterloss:removeItens')
      end
    else
      if isSwimming then
        isSwimming = false
      end
    end

    Citizen.Wait(1000)
  end
end)