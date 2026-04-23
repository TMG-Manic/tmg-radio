fx_version 'cerulean'
game 'gta5'

description 'TMG-Radio Resource - WIP'
version '1.2.2'

shared_script {
  '@tmg-core/shared/locale.lua',
  'locales/en.lua',
  'locales/*.lua',
  'config.lua'
}

client_scripts {
  'client.lua',
}

server_script 'server.lua'

ui_page('html/ui.html')

files {
  'html/ui.html',
  'html/js/script.js',
  'html/css/style.css',
  'html/img/radio*.png'
}

dependency 'pma-voice'

lua54 'yes'
