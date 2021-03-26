if [[ $(bspc query -T -d | jshon -e name -u) = "Others" ]]
then
	bspc desktop -f "Web"
else
	bspc desktop -f "Others"
fi
