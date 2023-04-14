-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Ruan Portella e Matheus Vieira'

description 'Este script para FiveM detecta quando um jogador entra na água e faz com que o jogador perca alguns itens do seu inventário. Isso incentiva os jogadores a evitar a água e a proteger seus pertences valiosos.io. Isso incentiva os jogadores a evitar a água e a proteger seus pertences valiosos.'

version '1.0.0'

client_scripts {
  '@vrp/lib/utils.lua',
  'client-side/**',
}

server_script {
  '@vrp/lib/utils.lua',
  'server-side/**',
}