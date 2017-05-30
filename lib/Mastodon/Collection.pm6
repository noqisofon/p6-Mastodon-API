use v6;

unit class Mastodon::Collection does Iterable does Positional;

has @.collection;

method new(@items, ::T $klass) {
    self.bless(  )
}

method iterator() {
    @.collection
}
