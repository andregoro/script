

use strict;
use warnings;

my $doc = <<"DOC";
This program illustrates commenting
DOC

my $str="dsd";
print $doc,"\n";

#my $str="Peal";
my $rev=reverse($str);

#=ANYNAME
 print "$rev\n";

my @arr=split("",$str);
#=cut
for(my $i=$#arr;$i>=0;$i--){
#<<SOMENAME
	print "$arr[$i]";
}
#SOMENAME
print "\n";

