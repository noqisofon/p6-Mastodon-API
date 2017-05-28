use v6;

use Mastodon::REST::Utils;

unit role Mostodon::REST::Statuses does Mastodon::REST::Utils;

method create-status($text, *@args) {
    my %params = self.normalize-status-params( @args );

    %params{'status'}        = $text;
    %params{'media-ids[]'} ||= %params.delete( 'media-ids' );

    self.perform-request-with-object( 'post', '/api/v1/statuses', %params, Mastodon::Status );
}

method status($id) {
    self.perform-request-with-object( 'get', "/api/v1/statuses/{$id}", {}, Mastodon::Status );
}
