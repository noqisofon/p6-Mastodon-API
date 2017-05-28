#!/usr/bin/sh

find -name '*.pm6' -print -exec perl6 -I./lib -c {} \;

PERL6LIB=$PWD/lib prove -e perl6 -vr t/
