use v6;

use Mastodon::REST::Utils;

unit role Mostodon::REST::Statuses does Mastodon::REST::Utils;

method create-status($text, *@args) {
    my %params = normalize-status-params( @args );

    %params{'status'}        = $text;
    %params{'media-ids[]'} ||= %params.delete( 'media-ids' );

    perform-request-with-object( 'post', '/api/v1/statuses', %params, Mastodon::Status );
}

method status($id) {
    perform-request-with-object( 'get', "/api/v1/statuses/{$id}", {}, Mastodon::Status );
}
