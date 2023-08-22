#!/usr/bin/env sh
data=$(curl --silent https://api.openweathermap.org/data/2.5/weather\?lat\=-23.8249\&lon\=-45.4391\&units\=metric\&appid\=ae282a855340382ad9d60ad69e252478)
icon=$(echo $data | jq '.weather[].icon')
description=$(echo $data | jq -j '.weather[].description, ":",(.main.temp | tostring)[:2],""')
if [[ "$icon" == *"01d"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt 
elif [[ "$icon" == *"02d"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt 
elif [[ "$icon" == *"03d"* ]]; then 
	echo "󰖕  $description" > $HOME/.local/share/weather.txt 
elif [[ "$icon" == *"04d"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt
elif [[ "$icon" == *"09d"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt
elif [[ "$icon" == *"010d"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt
elif [[ "$icon" == *"11d"* ]]; then 
	echo "󰙾  $description" > $HOME/.local/share/weather.txt 
elif [[ "$icon" == *"50d"* ]]; then 
	echo "󰖑  $description" > $HOME/.local/share/weather.txt 
elif [[ "$icon" == *"01n"* ]]; then 
	echo "󰖔  $description" > $HOME/.local/share/weather.txt 
elif [[ "$icon" == *"02n"* ]]; then 
	echo "󰼱  $description" > $HOME/.local/share/weather.txt 
elif [[ "$icon" == *"03n"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt
elif [[ "$icon" == *"04n"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt
elif [[ "$icon" == *"09n"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt
elif [[ "$icon" == *"10n"* ]]; then 
	echo "  $description" > $HOME/.local/share/weather.txt
elif [[ "$icon" == *"11n"* ]]; then 
	echo "󰙾  $description" > $HOME/.local/share/weather.txt
fi