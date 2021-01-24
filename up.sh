if [[ $(bspc query -T -d | jshon -e name -u) = "Term" ]]
then
	bspc desktop -f "Web"
elif [[ $(bspc query -T -d | jshon -e name -u) = "Code" ]]
then
	bspc desktop -f "Mail"
fi
