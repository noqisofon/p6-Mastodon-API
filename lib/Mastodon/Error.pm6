use v6;

unit module Mastodon::Error;

my class MastodonError {
    has Str $.message;

    submethod from-response(%body) {
        MastodonError.new( message => %body<error> )
    }
}

class BadRequest          is MastodonError {}
class Unauthorized        is MastodonError {}
class Forbidden           is MastodonError {}
class UnprocessableEntity is MastodonError {}

constant %ERRORS = {
    400 => Mastodon::Error::BadRequest,
    401 => Mastodon::Error::Unauthorized,
    403 => Mastodon::Error::Forbidden,
    422 => Mastodon::Error::UnprocessableEntity
};
