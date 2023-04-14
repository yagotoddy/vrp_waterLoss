local Tunnel = module("vrp", "lib/Tunnel")
tunnelServer = Tunnel.getInterface("vrp_waterLoss")

Citizen.CreateThread(function()
  tunnelServer.removeItens()
  while true do
    local ped = PlayerPedId()
    local pedSwimming = IsPedSwimming(ped)
    if pedSwimming and tunnelServer.isNotAdm() then
      print("Ele não é adm")
    else
      print("Ele é Adm")
    end
    Citizen.Wait(2500) 
  end
end)