#!/usr/bin/perl

undef $/;
while (<>) {
  s/FORMFEED(\[Page\s+\d+\])/        \1\n\f\n/gm;
  print;
}
