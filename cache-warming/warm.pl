#!/usr/bin/perl

my $UAS = shift; 
my $LBS = shift;
my $URI = shift;
my $LOG = shift;
my $limit = shift;

my $c = 0;


if (!$URI) {
   print "Usage: $0 user-agent loadbalancer URI <log> <limit>\n";
   exit;
}

open(LOG, "> $LOG");
open(UAS, "< $UAS");


while ($ua=<UAS>) {
   open(LBS, "< $LBS");


   while ($lb=<LBS>){
        
        open(URI, "< $URI");

        while ($uri=<URI>){

 
             chomp $ua;
             chomp $uri;
             chomp $lb;
             $c++;
             print "$ua $uri $lb \n";
             print LOG "$c $ua $uri $lb \n";
             if ($c == "$limit") { exit; }	    

        }

        close URI;

   }

   close LBS; 

}

close UAS;
close LOG;
