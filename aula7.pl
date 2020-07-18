@skills=("Peal",5,"Python",2,"Java",4);
print "@skills\n";

print "Primeiro elemento: $skills[0]\n";
print "ultimo elemento: $skills[-1]\n";
print "penultimo  elemento: $skills[-2]\n";
print "Elementos de 2 a 4 index:@skills[2..4]\n";
print "Elementos de 2 para o ultimo:@skills[2..$#skills]\n";
print "os 3 ultimo elemento do array:@skills[$#skills-2..$#skills]\n";

@xep=(1..10);

push(@xep,11);
print "@xep\n";

unshift(@xep,"inicio");
print "@xep\n";

$popped=pop(@xep);
print "@xep\n";