use v6;

unit class Mastodon::Collection does Iterable does Positional;

has @!collection;

method new(*@items) {
    self.bless( :collection(@items) )
}

submethod BUILD(:@!collection) {}

method iterator() { @!collection.iterator }

method size() { @!collection.elems }

method map(&block) { @!collection.map( &block ) }
