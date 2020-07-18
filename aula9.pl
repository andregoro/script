@marks=(65,76,89,90,55,44);

print "@marks[1..4]\n";

splice(@marks,3,4,99..100);
print "@marks\n";

@lastThree=splice(@marks,-3);
print "@lastThree\n"