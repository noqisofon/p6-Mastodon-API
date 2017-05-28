use v6;

use Mastodon::REST::Request;

unit role Mastodon::REST::Utils;


method perform-request($request-method, $path, *%options) {
    Mastodon::REST::Request.new( self, $request-method, $path, %options ).perform
}

method perform-request-with-object($request-method, $path, %options, $klass) {
    my $request = perform-request( $request-method, $path, %options );

    $klass.new( $request );
}
