fx_version 'bodacious' 
games { 'gta5' }
description {'Simple jump scare'}
lua54 'yes'

ui_page 'html/index.html'

client_scripts {
	'client/client.lua',
}

server_scripts {
	'server/server.lua',
}

files {   
	"html/index.html",
	"html/style.css",
	"html/script.js",
    "html/jumpscare.mp4"
}
