use v6;

use Mastodon::Client;

unit class Mastodon::Headers;

has Mastodon::Client $.client is readonly;

method new(Mastodon::Client $client) {
    self.bless( :$client )
}

method request-headers() {
    {
        user-agent    => $!client.user-agent,
        accept        => '*/*',
        authorization => "Bearer {$.client.bearer-token}"
    }
}
