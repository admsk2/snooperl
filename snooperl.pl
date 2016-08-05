#!/usr/bin/perl

use strict;
# use warnings;

use Cwd;
use Cwd 'abs_path'; # for absolute paths of files

my $dir = getcwd;

# begin data collection

print "\n*** Please enter FILES PATH rule below ***\n\nHints:\n(*) - select all\n(../) - go up one level\n\nCurrent dir: $dir\n\n";
chomp(my $input_1 = <>);

print "\nWhat is the file type?\n\nExample:\n.txt\n.html\n\n";
chomp(my $input_2 = <>);

my @file_list = map {abs_path($_)} glob "" . $input_1 . $input_2;
my $file_list_length = scalar(@file_list);
my $status = (-e $file_list[0]) ? 1 : 0;

if ($file_list_length gt 1) {
print "\nSo there are $file_list_length files.\n\n";
} elsif ($file_list_length eq 1 && $status) {
print "\nSo there is $file_list_length file.\n\n";
} else {
die "\nThe FILES PATH is incorrect. Please try again.";
}

print "What is the STRING you want to replace?\n";
chomp(my $init_string = <>);

print "\nAnd you want to replace for?\n";
chomp(my $replace_string = <>);

# finish data collection

my $counter = 0; # count replaced strings

foreach my $i (@file_list) { # iterate through files
    
    open (my $fh, '<', $i) or die "Access restricted."; # open for reading
    my @data = <$fh>; # keeps data found in files
    close $fh;
    
    foreach my $l (@data) { # iterate through data lines
    if ($l =~ /$init_string/) { $counter += 1; }
    $l =~ s/$init_string/$replace_string/g;
    }
    
    open (my $fhw, '>', $i) or die "Access restricted."; # open for writing
    print $fhw @data; # write new data
    close $fhw;
    
}

# feedback

if ($counter == 0) {
print "\nString has not been found among files. Please try again.\n\n"
} elsif ($counter == 1) {
print "\nString replaced $counter time.\n\n";
} else {
print "\nString replaced $counter times.\n\n";
}

__END__