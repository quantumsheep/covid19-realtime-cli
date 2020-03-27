#!/bin/bash

while true; do
    lines=$((`tput lines` - 13))

    res=$(curl -s "https://corona-stats.online?top=$lines&source=2&minimal=true")

    clear -x
    echo "$res"

    sleep 30
done
