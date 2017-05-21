#!/usr/bin/sh

find -name '*.pm6' -print -exec perl6 -I./lib -c {} \;

perl6 -I./lib ./t/01-sanity.t
