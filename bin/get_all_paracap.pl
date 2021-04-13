#!/usr/bin/perl
use strict;
use warnings;

sub printArray{
	my $val_ref = $_[0];
	foreach my $v (@$val_ref) {  
    	print "$v, ";  
	}
	print "\n";
}
if( !$ARGV[0] ){
	die("usage: ./get_all_paracap <input.spf>\n");
}

open(FILE, '<', $ARGV[0]) or die $!;
my $total_cap = 0;
while(<FILE>){
	chomp $_;
	my $line = $_;
	if ($line =~ "^C"){
		my @val = split(' ', $line);
		#&printArray(\@val);
		#print("cap = $val[3]\n");
		if($val[1] =~ "SL[0-9][A-Z]" && $val[2] =~ "SL[0-9][A-Z]"){
			$total_cap += $val[3];
		}
	}
}
close(FILE);

print("total cap = $total_cap\n");
