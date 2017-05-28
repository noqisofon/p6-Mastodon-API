use v6;

use Mastodon::REST::Statuses;
use Mastodon::REST::Accounts;
use Mastodon::REST::Timelines;
use Mastodon::REST::Notifications;
use Mastodon::REST::Search;
use Mastodon::REST::Relationships;
use Mastodon::REST::Media;
use Mastodon::REST::Suggestions;
use Mastodon::REST::Apps;
use Mastodon::REST::Instances;

unit role Mastodon::REST::API
does Mastodon::REST::Statuses
does Mastodon::REST::Accounts
does Mastodon::REST::Timelines
does Mastodon::REST::Notifications
does Mastodon::REST::Search
does Mastodon::REST::Relationships
does Mastodon::REST::Media
does Mastodon::REST::Suggestions
does Mastodon::REST::Apps
does Mastodon::REST::Instances;
