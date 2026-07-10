#> xpplate :_/util/ plate_text
# construct
#--------------------
# ./main
#--------------------
$say [$(blanks), $(left), " ", $(center), " ", $(right), $(blanks)]
#$data modify storage six:in resolve.text set value [$(blanks), $(left), " ", $(center), " ", $(right), $(blanks)]
function six:text/resolve
data modify storage xpplate:_/out plate_text.result set from storage six:out resolve.result