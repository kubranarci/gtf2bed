use strict;
use warnings;

my $num_args = $#ARGV + 1;
if ($num_args != 2) {
    print "\nUsage: gft2bed.pl input_file output_file\n";
    exit;
}

my $input_file=$ARGV[0];
my $output_file=$ARGV[1];



open(OUTPUT,">",$output_file);

my @chr;
my @group;
my @class;
my @start;
my @end;
my @score;
my @region;
my @strand;
my @info;

my @array1;
open (my $inFile, '<', $input_file) or die $!;
while (<$inFile>) {

  push(@array1,split /\n/);
}
close ($inFile);

my @awk;


foreach my $var (@array1)
	{


		my @awk= (split /\s+/, $var);

		$awk[9]=~s/;//;
		$awk[9]=~s/"//;
		$awk[9]=~s/"//;


	

		if ($awk[2] eq "gene"){
		    print OUTPUT  "$awk[0]	$awk[3]	$awk[4]	$awk[9]	$awk[6]\n";

		}
		
		


}
close OUTPUT;


