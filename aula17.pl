use strict;
use warnings;

my @skills=("Peal","Python","Java","Unix","Shell")

if ( $skills[-1] eq "Shell"){
    print "if..true\n";
}else if ($skills[0] eq "Java"){
    print "else if..true\n";
}else{
    print "else..true\n";
}
unless(scalar @skills ==6){
    print "unless true";
}