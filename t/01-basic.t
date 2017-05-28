use v6.c;

use Test;

use Mastodon::API;

my $client = Masdoton::REST::Client.new( :bare-url('https://mastodon.social/'), :bear-token('YOUR_ACCSESS_TOKEN') );

ok $client;

done-testing;
