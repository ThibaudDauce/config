if [[ $(bspc query -T -d | jshon -e name -u) = "Web" ]]
then
	bspc desktop -f "Term"
elif [[ $(bspc query -T -d | jshon -e name -u) = "Mail" ]]
then
	bspc desktop -f "Code"
fi
