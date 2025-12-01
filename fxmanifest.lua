fx_version "cerulean"
game "gta5"

author "Kanade Scripts"
description "A simple cityhall script"
version "1.0.0"

shared_scripts {
    "@ox_lib/init.lua"
}

client_scripts {
    "client/cl_config.lua",
    "client/main.lua"
}

server_scripts {
    "server/sv_config.lua",
    "server/main.lua"
}