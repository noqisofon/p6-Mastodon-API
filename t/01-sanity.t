# -*- mode: perl6; -*-
use v6;

use Test;

use Mastodon::Base;
use Mastodon::App;
use Mastodon::Client;

plan *;
subtest {
    my %expected := { hoge => 42, piyo => 72 };
    
    my $base = Mastodon::Base.new( hoge => %expected<hoge>,
                                   piyo => %expected<piyo> );

    is        Mastodon::Base, $base.WHAT                      , 'what is Mastodon::Base?';
    is-deeply %expected     , $base.attributes                , 'attributes is ok';
}, 'Mastodon::Base';

subtest {
    
    my %expected := { client-id     => 'PIYOPIYO',
                      client-secret => 'HOGEPIYO' };

    my $app = Mastodon::App.new( client-id     => %expected<client-id>,
                                 client-secret => %expected<client-secret> );

    is        Mastodon::App, $app.WHAT                        , 'what is Mastodon::App?';
    is        'PIYOPIYO'   , $app.client-id                   , 'client-id is PIYOPIYO';
    is        'HOGEPIYO'   , $app.client-secret               , 'client-secret is HOGEPIYO';
    is-deeply %expected    , $app.attributes                  , '$app have attributes';
}, 'Mastodon::App';

subtest {
    my $client = Mastodon::Client.new( base-url    => 'https://example.social/',
                                       barer-token => 'BARE_TOKEN' );

    is  Mastodon::Client        , $client.WHAT                , 'what is Mastodon::Client?';
    is 'https://example.social/', $client.base-url            , 'base-url is https://example.social/';
    is 'BARE_TOKEN'             , $client.barer-token         , 'barer-token is BARE_TOKEN';
    is 'Mastodon::API/??.?'     , $client.user-agent          , 'default user-agent is Mastodon::API/??.?'; 
}, 'Mastodon::Client';

done-testing;
