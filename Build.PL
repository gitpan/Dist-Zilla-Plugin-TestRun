
use strict;
use warnings;

use Module::Build 0.3601;
use lib qw{inc}; use Test::Run::Builder;

my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "run ./Build runtest on the build distribution",
  "dist_author" => [
    "Shlomi Fish <shlomif\@cpan.org>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-TestRun",
  "dist_version" => "0.0.1",
  "license" => "mit",
  "module_name" => "Dist::Zilla::Plugin::TestRun",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dist::Zilla::Role::TestRunner" => 0,
    "Moose" => 0
  },
  "script_files" => []
);


my $build = Test::Run::Builder->new(%module_build_args);

$build->create_build_script;
