local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

local itemList = {
  { remove = "celular", give = "celularqueimado" },
  { remove = "radio", give = "radioqueimado" },
}

RegisterNetEvent('waterloss:removeItens',function()
  local playerId = vRP.getUserId(source)
  if not playerId then
    print('[-] O id do usuario nao foi encontrado.')
    return
  end

  local isAdmin = vRP.hasPermission(playerId,"administrador.permissao")
  if isAdmin then
    print('[-] O usuario é admin.')
    return
  end

  for i = 1,#itemList do
    local item = itemList[i]
    local count = vRP.getInventoryItemAmount(playerId,item.removeItem)
    if vRP.tryGetInventoryItem(playerId,item.removeItem,count) then
      vRP.giveInventoryItem(playerId,item.giveitem,count,true)
      TriggerClientEvent('Notify',source,'negado',('Você entrou na água com um %s e por isso ele queimou.'):format(vRP.itemNameList(item.removeItem)),5000)
    end
  end
end)