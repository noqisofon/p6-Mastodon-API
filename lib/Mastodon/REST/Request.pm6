use v6;

use HTTP::Client;
use URI;

use Mastodon::Client;
use Mastodon::Headers;
use Mastodon::Error;

unit class Mastodon::REST::Request;

has Mastodon::Client  $.client         is readonly;
has Str               $.request-method is readonly;
has URI               $.uri            is readonly;
has                   %.headers        is readonly;
has Str               $.path           is readonly;
has                   %.options        is readonly;

method new($client, $request-method, $path, *%options) {
    self.bless( :$client, :$request-method, :$path, :%options )
}

method perform() {
    my $client      = Net::HTTP::Client.new;
    # my $options-key = $!request-method ~~ :get ?? :params !! :form;
    # my $response    = self!http-client.headers( %!headers ).public-send( $!request-method, $!uri.Str, :$options-key );
    my $request     = self!http-client.new( $!uri.Str, $!request-method, %!headers );

    my $response    = $client.round-trip( $request );

    note $response.body if %*ENV<DEBUG> ~~ 'true';

    self!fail-or-return( $response.status-code, $response.body ?? {} !! $response.parse );
}

method !fail-or-return(Int $code, %body) {
    die %Mastodon::Error::ERRORS{$code}.from-response( %body ) if Mastodon::Error::ERRORS{$code}
}

method !http-client() {
    Net::HTTP::Request
}
