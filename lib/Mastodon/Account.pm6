use v6;

use Mastodon::Base;

unit class Mastodon::Account;


has Int $.id              is readonly;
has Str $.user-name       is readonly;
has Str $.acct            is readonly;
has Str $.display-name    is readonly;
has Str $.url             is readonly;
has Str $.avatar          is readonly;
has Str $.header          is readonly;
has Str $.note            is readonly;
has Int $.follower-count  is readonly;
has Int $.following-count is readonly;
has Int $.statuses-count  is readonly;

method new(*%attributes) {
    self.bless( id              => %attributes{'id'}:exists ?? %attributes{'id'} !! 0,
                user-name       => %attributes{'user-name'},
                acct            => %attributes{'acct'},
                display-name    => %attributes{'display-name'},
                url             => %attributes{'url'},
                avatar          => %attributes{'avatar'},
                header          => %attributes{'header'},
                note            => %attributes{'note'},
                follower-count  => %attributes{'follower-count'}:exists  ?? %attributes{'follower-count'}  !! 0,
                following-count => %attributes{'following-count'}:exists ?? %attributes{'following-count'} !! 0,
                statuses-count  => %attributes{'statuses-count'}:exists  ?? %attributes{'statuses-count'}  !! 0,
                :%attributes );
}
