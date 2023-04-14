local Tunnel = module("vrp", "lib/Tunnel")
tunnelServer = Tunnel.getInterface("vrp_waterLoss")

Citizen.CreateThread(function()
  while true do
    local ped = PlayerPedId();
    local pedSwimming = IsPedSwimming(ped)
    if pedSwimming then
      print("Ele está nadando")
    else
      print("Ele não está nadando")
    end
    Citizen.Wait(2500) 
  end
end)