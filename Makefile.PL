#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Calendar::Gregorian',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Calendar/Gregorian.pm',
    ABSTRACT_FROM      => 'lib/Calendar/Gregorian.pm',
    LICENSE            => 'artistic_2',
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo'                     => '2.000000',
        'namespace::clean'        => '0.24',
        'Date::Gregorian::Simple' => '0.04',
        'Module::Pluggable'       => '5.1',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Calendar-Gregorian-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/manwar/Calendar-Gregorian.git',
                web  => 'https://github.com/manwar/Calendar-Gregorian',
            },
        }})
     : ()
    ),
);
