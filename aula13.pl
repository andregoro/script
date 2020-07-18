print "Enter e skill: ";

$input=<STDIN>;

print "$input";
chomp($input);

print "$input";

%hash=(unix => 5,perl => 5,python =>2,java =>0);
print $hash{"unix"},"\n";
chop(%hash);
print %hash;

