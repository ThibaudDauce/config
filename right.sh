if [[ $(bspc query -T -d | jshon -e name -u) = "Web" ]]
then
	bspc desktop -f "Mail"
elif [[ $(bspc query -T -d | jshon -e name -u) = "Term" ]]
then
	bspc desktop -f "Code"
fi
