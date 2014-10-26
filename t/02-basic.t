#!perl
use strict;
use Test::More (tests => 4);
use Data::FormValidator;

BEGIN
{
    use_ok("Data::FormValidator::Constraints::Japanese", ":closures");
}

my $dfv = Data::FormValidator->new('t/profile.pl');
my $rv  = $dfv->check({ hiragana => "�ˤۤ�", katakana => "��������" }, "basic");

ok(! $rv->has_invalid && ! $rv->has_missing && ! $rv->has_unknown, "valid");

$rv = $dfv->check({ hiragana => "���ܸ�" }, "basic");
ok($rv->has_invalid && ! $rv->has_missing && ! $rv->has_unknown, "invalid and no missing");

$rv = $dfv->check({ katakana => "���ܸ�" }, "basic");
ok($rv->has_invalid && ! $rv->has_missing && ! $rv->has_unknown, "invalid and no missing");


1;