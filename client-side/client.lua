local Tunnel = module("vrp", "lib/Tunnel")
tunnelServer = Tunnel.getInterface("vrp_waterLoss")

Citizen.CreateThread(function()
  while true do
    local ped = PlayerPedId()
    local pedSwimming = IsPedSwimming(ped)
    if pedSwimming and tunnelServer.isNotAdm() then
      tunnelServer.removeItens()
    else
      print("Ele é administrador, por isso não perde seus itens")
    end
    Citizen.Wait(2500) 
  end
end)