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
	die("usage: ./get_paracap <net_name> <input.spf>\n");
}
my $net = $ARGV[0];
open(FILE, '<', $ARGV[1]) or die $!;
my $total_cap = 0;
my $total_para = 0;
my $inNet=0;
while(<FILE>){
	chomp $_;
	my $line = $_;
	if ($line =~ "NET $net"){
		$inNet = 1;
		my @val = split(' ', $line);
		$total_cap = 0.0 + substr $val[2], 0, -2;
		$total_cap = $total_cap*0.000000000001;
	}
	elsif($line =~ "NET"){
		$inNet = 0;
	}
	if ($line =~ "^C"){
		my @val = split(' ', $line);
		#&printArray(\@val);
		#print("cap = $val[3]\n");
		#if($val[1] =~ $net || $val[2] =~ $net){
		#	$total_cap += $val[3];
		#}
		if($inNet == 1){
			#print(" [para] - $val[1] <--> $val[2]\n");
			$total_para += $val[3]
		}
		elsif(($val[1] =~ $net && !($val[2] =~ "TOP_ARRAY")) || ($val[2] =~ $net && !($val[1] =~ "TOP_ARRAY"))){
			#print(" [para] - $val[1] <--> $val[2]\n");
			$total_para += $val[3];
		}
	}
}
close(FILE);

print("total Cap. of net \'$net\' = $total_cap\n");
print("total parasitic Cap. of net \'$net\' = $total_para\n");
