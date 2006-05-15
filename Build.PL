#!perl
use strict;
use Module::Build;

my $build = Module::Build->new(
    dist_name => 'Data-FormValidator-Constraints-Japanese',
    dist_version_from => 'lib/Data/FormValidator/Constraints/Japanese.pm',
    requires => {
        'Data::FormValidator'     => 0,
        'Encode'                  => 0,
        'Encode::Detect'          => 0,
        'Mail::Address::MobileJp' => 0,
    },
    license => 'perl',
    create_readme => 1,
    create_makefile_pl => 'traditional',
);
$build->create_build_script();