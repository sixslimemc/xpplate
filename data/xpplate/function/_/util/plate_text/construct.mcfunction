#> xpplate :_/util/ plate_text
# construct
#--------------------
# ./main
#--------------------

data modify storage six:in resolve.text set value [{text:"IN ", color:gold}, blanks, left, " ", center, " ", right, blanks, {text:" OUT", color:dark_green}]
data modify storage six:in resolve.text[1] set from storage xpplate:_ u.plate_text.blanks
data modify storage six:in resolve.text[2] set from storage xpplate:_ u.plate_text.left
data modify storage six:in resolve.text[4] set from storage xpplate:_ u.plate_text.center
data modify storage six:in resolve.text[6] set from storage xpplate:_ u.plate_text.right
data modify storage six:in resolve.text[7] set from storage xpplate:_ u.plate_text.blanks
function six:text/resolve
data modify storage xpplate:_/out plate_text.result set from storage six:out resolve.result