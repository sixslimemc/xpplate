#> xpplate :_/util/ plate_text
# construct
#--------------------
# ./main
#--------------------

data modify storage six:in resolve.text set value [in_label, blanks, left, {text:" [ ", color:gold}, center, {text:" ] ", color:gold}, right, blanks, out_label]
data modify storage six:in resolve.text[0] set from storage xpplate:_ u.plate_text.in_label
data modify storage six:in resolve.text[1] set from storage xpplate:_ u.plate_text.blanks
data modify storage six:in resolve.text[2] set from storage xpplate:_ u.plate_text.left
data modify storage six:in resolve.text[4] set from storage xpplate:_ u.plate_text.center
data modify storage six:in resolve.text[6] set from storage xpplate:_ u.plate_text.right
data modify storage six:in resolve.text[7] set from storage xpplate:_ u.plate_text.blanks
data modify storage six:in resolve.text[8] set from storage xpplate:_ u.plate_text.out_label
function six:text/resolve
data modify storage xpplate:_/out plate_text.result set from storage six:out resolve.result