%hash=(unix => 5,perl => 5,python =>2,java =>0);
print $hash{"unix"},"\n";

@arrayKeys= keys %hash;
print "keys: @arrayKeys\n";

@arrayValues= values %hash;
print "Values: @arrayValues\n";

if(exists($hash{"peal"})){
    print "Exist";
}else{
    print "nao Exist";
}

print "\n";

print scalar @arrayKeys,"\n";
print scalar @arrayValues,"\n";

$hash{"Oracle"}=2;
print scalar $hash{"Oracle"},"\n";

delete $hash{"unix"};