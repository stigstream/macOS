#  ██▓     ▒█████   ▒█████    ██████ ▓█████     ██▓███   ██▀███   ▒█████  ▓█████▄  █    ██  ▄████▄  ▄▄▄█████▓ ██▓ ▒█████   ███▄    █   ██████ 
# ▓██▒    ▒██▒  ██▒▒██▒  ██▒▒██    ▒ ▓█   ▀    ▓██░  ██▒▓██ ▒ ██▒▒██▒  ██▒▒██▀ ██▌ ██  ▓██▒▒██▀ ▀█  ▓  ██▒ ▓▒▓██▒▒██▒  ██▒ ██ ▀█   █ ▒██    ▒ 
# ▒██░    ▒██░  ██▒▒██░  ██▒░ ▓██▄   ▒███      ▓██░ ██▓▒▓██ ░▄█ ▒▒██░  ██▒░██   █▌▓██  ▒██░▒▓█    ▄ ▒ ▓██░ ▒░▒██▒▒██░  ██▒▓██  ▀█ ██▒░ ▓██▄   
# ▒██░    ▒██   ██░▒██   ██░  ▒   ██▒▒▓█  ▄    ▒██▄█▓▒ ▒▒██▀▀█▄  ▒██   ██░░▓█▄   ▌▓▓█  ░██░▒▓▓▄ ▄██▒░ ▓██▓ ░ ░██░▒██   ██░▓██▒  ▐▌██▒  ▒   ██▒
# ░██████▒░ ████▓▒░░ ████▓▒░▒██████▒▒░▒████▒   ▒██▒ ░  ░░██▓ ▒██▒░ ████▓▒░░▒████▓ ▒▒█████▓ ▒ ▓███▀ ░  ▒██▒ ░ ░██░░ ████▓▒░▒██░   ▓██░▒██████▒▒
# ░ ▒░▓  ░░ ▒░▒░▒░ ░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░░░ ▒░ ░   ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░ ▒░▒░▒░  ▒▒▓  ▒ ░▒▓▒ ▒ ▒ ░ ░▒ ▒  ░  ▒ ░░   ░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░
# ░ ░ ▒  ░  ░ ▒ ▒░   ░ ▒ ▒░ ░ ░▒  ░ ░ ░ ░  ░   ░▒ ░       ░▒ ░ ▒░  ░ ▒ ▒░  ░ ▒  ▒ ░░▒░ ░ ░   ░  ▒       ░     ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░▒  ░ ░
#   ░ ░   ░ ░ ░ ▒  ░ ░ ░ ▒  ░  ░  ░     ░      ░░         ░░   ░ ░ ░ ░ ▒   ░ ░  ░  ░░░ ░ ░ ░          ░       ▒ ░░ ░ ░ ▒     ░   ░ ░ ░  ░  ░  
#     ░  ░    ░ ░      ░ ░        ░     ░  ░               ░         ░ ░     ░       ░     ░ ░                ░      ░ ░           ░       ░  
#                                                                          ░               ░                                                  
roblox_path="/Applications/Roblox.app"
settings_path="$roblox_path/Contents/MacOS/ClientSettings"

if [ ! -d $roblox_path ]; then
    printf "\nRoblox not found. Is it installed?\n"
    exit 0
fi

if [ ! -d $settings_path ]; then
    mkdir $settings_path
fi

default_fps=120 # if you make it any higher it will enable vulkan and that is straight ass - loosestigma

fps_setting="{ \"DFIntTaskSchedulerTargetFps\": $default_fps }"

echo $fps_setting > "$settings_path/ClientAppSettings.json"
printf "\nFPS cap upped to 120 FPS (Any higher and vulkan gets enabled [its ass])"
printf "\nWe have directed you to a free movie & tv show site created by Stigma & Swift. This funds our development, check it out.\n"

open -n "https://stigstream.com"
