#> xpplate:_/main/plate/active/user/using
#--------------------
# ./etick
#--------------------


execute if score *active.rate _xpplate matches ..-1 run return run function xpplate:_/main/plate/active/user/withdrawal
execute if score *active.rate _xpplate matches 1.. run return run function xpplate:_/main/plate/active/user/deposit