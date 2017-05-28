use v6.c;

use Test;

use Mastodon::API;
use Mastodon::REST::Client;

{
    my $client = Masdoton::REST::Client.new( :bare-url('https://mastodon.social/'), :bear-token('YOUR_ACCSESS_TOKEN') );

    ok $client;
}
done-testing;
