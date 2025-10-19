#!/usr/bin/perl
use strict;
use warnings;

print "Perl Calculator\n";
while (1) {
    print "> ";
    my $in = <STDIN>;
    chomp $in;
    last if $in eq 'exit';
    if ($in =~ /^[0-9\+\-\*\/\(\)\.\s]+$/) {
        my $res = eval $in;
        print "=$res\n";
    } else {
        print "Invalid\n";
    }
}
