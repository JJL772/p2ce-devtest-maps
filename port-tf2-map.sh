#!/bin/bash
# Quickly ports hl2dm maps over by changing ents
cd "$(dirname "$0")"

MAP="$1"
if [ -z $MAP ]; then
	echo "USAGE: ./port-hl2dm-map.sh mapname.vmf"
	exit 1
fi

cd mapsrc

sed -i 's/"classname" "info_player_teamspawn"/"classname" "info_player_start"/g' "$MAP"
#sed -i 's/"classname" "info_player_rebel"/"classname" "info_player_start"/g' "$MAP"
#sed -i 's/"classname" "info_player_combine"/"classname" "info_player_start"/g' "$MAP"
#sed -i 's/"classname" "prop_physics_respawnable"/"classname" "prop_physics"/g' "$MAP"
