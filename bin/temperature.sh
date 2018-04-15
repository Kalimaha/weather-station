#!/bin/bash

TIMEOUT=2

echo "Read temperature sensors every $TIMEOUT seconds: START"
echo "========================================================================"
while true; do
  echo -n "  Temperature [°C]: " 
  elixir -r lib/weather_station.ex -e "WeatherStation.temperature"
  sleep $TIMEOUT
done
