#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound " ${sounds[dog]} #dog's sound
echo "All Animal sound " ${sounds[@]} #all values
echo "Animal " ${!sounds[@]} #all key
echo "Number of animals " ${#sounds[@]} #no of elements
unset sounds[dog] #deleting dog
