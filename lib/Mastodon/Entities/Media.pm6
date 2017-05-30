use v6;

use Mastodon::Base;

unit class Mastodon::Entities::Media is Mastodon::Base;

has Int $.id          is readonly;
has Str $.url         is readonly;
has Str $.preview-url is readonly;
has Str $.type        is readonly;
