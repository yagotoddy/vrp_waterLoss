local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
sdRP = {}
Tunnel.bindInterface("vrp_waterLoss", sdRP)

local itens = {
  { "cellphone" },
  { "mochila" },
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
  local playerAdm = vRP.hasPermission(playerId,"administrador.permissao")
  
--   if (playerAdm) then
--     return
--   end

  for k,v in pairs(itens) do
    print("Essa é a key",  k)
    print("Essa é o value", v[1])
  end

end
