use v6;

unit class Mastodon::Client;

has $.base-url     is readonly;

has $.barer-token  is readonly;

has $.user-agent   is readonly;

method new(*%attributes) {
    self.bless( :base-url(%attributes{'base-url'}),
                :barer-token(%attributes{'barer-token'}),
                # TODO: fetch version from module metadata
                :user-agent(%attributes{'user-agent'} || "Mastodon::API/??.?") );
}

