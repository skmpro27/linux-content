
#! /bin/bash -x

conv1=$(( 42/12 ))
echo "42in =" $conv1"ft"

conv2=$(( 60*381/1250 ))
conv3=$(( 30*381/1250 ))
area=$(( conv2*conv3 ))
echo "60feet X 40feet =" $area"meter sq."

acr=$(( 25*area*49421/200000000 ))
echo "25 such plots in acres =" $acr"acre"
