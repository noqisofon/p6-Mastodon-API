use v6;

use Mastodon::Base;

unit class Mastodon::Mention is Mastodon::Base;

has Int $.id   is readonly;

has Str $.acct is readonly;

has Str $.url  is readonly;


