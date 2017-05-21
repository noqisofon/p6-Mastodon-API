use v6;

use Mastodon::Base;

unit class Mastodon::App is Mastodon::Base;

has $.client-id     is readonly;
has $.client-secret is readonly;

method new(*%attributes) {
    self.bless( client-id     => %attributes{'client-id'},
                client-secret => %attributes{'client-secret'},
                :%attributes );
}
