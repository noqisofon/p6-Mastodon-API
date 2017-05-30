use v6;

use Mastodon::Account;
use Mastodon::REST::Utils;

unit role Mastodon::REST::Accounts does Mastodon::REST::Utils;


method verify-credentials() {
    self.perform-request-with-object( 'get', '/api/v1/accounts/verify_credentials', {}, Mastodon::Account )
}

method update-credentials() {
    self.perform-request-with-object( 'get', '/api/v1/accounts/update_credentials', {}, Mastodon::Account )
}

method accounts(Int $id) {
    self.perform-request-with-object( 'get', "/api/v1/accounts/$id"               , {}, Mastodon::Account )
}
