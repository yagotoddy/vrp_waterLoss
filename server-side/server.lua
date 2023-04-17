local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
sdRP = {}
Tunnel.bindInterface("vrp_waterLoss", sdRP)

local itens = {
  { "celular", "celularqueimado" },
  { "radio", "radioqueimado" },
}

function sdRP.isNotAdm()
  local source = source
  local playerId = vRP.getUserId(source)
  local playerAdm = vRP.hasPermission(playerId,"administrador.permissao")
  if (playerAdm) then
    return false
  end 
  return true
end

function sdRP.removeItens()
  local source = source
  local playerId = vRP.getUserId(source)

  for k,v in pairs(itens) do
    local itemAmout = vRP.getInventoryItemAmount(playerId,v[1]) 
    if vRP.tryGetInventoryItem(playerId,v[1],itemAmout) then
      vRP.removeInventoryItem(playerId,v[1],itemAmout, true)
      vRP.giveInventoryItem(playerId,v[2],itemAmout,true)
      TriggerClientEvent('Notify',source,'negado','Você entrou na água com um '..vRP.itemNameList(v[1])..' e por isso ele queimou. ', 5000)
    end
  end

end
