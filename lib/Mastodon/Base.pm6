use v6;

unit class Mastodon::Base;

has %.attributes is readonly;

method new(*%attributes) {
    self.bless( :%attributes )
}
