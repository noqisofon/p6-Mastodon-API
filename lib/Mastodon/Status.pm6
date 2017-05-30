use v6;

use Mastodon::Base;
use Mastodon::Account;
use Mastodon::Collection;
use Mastodon::Entities::Media;
use Mastodon::Entities::Mention;

unit class Mastodon::Status is Mastodon::Base;

has Int                                               $.id                is readonly;
has Int                                               $.in-reply-to-id    is readonly;
has Str                                               $.content           is readonly;
has Str                                               $.url               is readonly;
has DateTime                                          $.created-at        is readonly;
has Int                                               $.reblogs-count     is readonly;
has Int                                               $.favourites-count  is readonly;
has Bool                                              $.visibility        is readonly;
has Mastodon::Account                                 $.account           is readonly;
has Mastodon::Status                                  $.reblog            is readonly;
has Bool                                              $.is-reblogged      is readonly;
has Bool                                              $.is-sensitive      is readonly;
has Mastodon::Collection[Mastodon::Entities::Media]   $.media-attachments is readonly;
has Mastodon::Collection[Mastodon::Entities::Mention] $.mentions          is readonly;


method new(*%attributes) {
    self.bless( :%attributes )
}
