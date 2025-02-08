#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " NOUN1
read -p "2. Name a plural living thing: " NOUN2
read -p "3. Name an adverb: " ADVERB1
read -p "4. Name a past-tense verb: " PTVERB1
read -p "5. Name a vehicle: " VEHICLE
read -p "6. Name a country: " COUNTRY
read -p "7. Name a celebrity: " CELEB
read -p "8. Name a plural noun: " PLNOUN

echo "Breaking news: Today's $NOUN1 tournament was interrupted when a wild pack of $NOUN2 invaded the arena, causing pandemonium as fans $ADVERB1 raced to safety. The animals $PTVERB1 the athletes and 
left mayhem in their wake, prompting a military $VEHICLE to arrive on the scene. It was later determined that these creatures were airdropped by $COUNTRY in a stunning betrayal of the Geneva Convention 
and general acceptable behavior. Among the spectators was $CELEB, who had this to say: \"It was a wild scene for sure. I'm just glad the $PLNOUN are ok."\
