
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Task::Catalyst',
                       'DISTNAME' => 'Task-Catalyst',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Florian Ragwitz <rafl@debian.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'All you need to start with Catalyst',
                       'EXE_FILES' => [],
                       'VERSION' => '4.00',
                       'PREREQ_PM' => {
                                        'Catalyst::Authentication::Credential::HTTP' => '0',
                                        'Catalyst::Plugin::ConfigLoader' => '0',
                                        'Catalyst::Devel' => '1.26',
                                        'Catalyst::Plugin::Session::State::Cookie' => '0',
                                        'CatalystX::Component::Traits' => '0',
                                        'Catalyst::Action::REST' => '0',
                                        'Catalyst' => '5.80',
                                        'Test::WWW::Mechanize::Catalyst' => '0',
                                        'Catalyst::Controller::ActionRole' => '0',
                                        'CatalystX::LeakChecker' => '0',
                                        'local::lib' => '0',
                                        'Catalyst::Authentication::Store::DBIx::Class' => '0',
                                        'Catalyst::Engine::PSGI' => '0',
                                        'Catalyst::ActionRole::ACL' => '0',
                                        'Catalyst::View::TT' => '0',
                                        'CatalystX::Profile' => '0',
                                        'Catalyst::Plugin::Session' => '0',
                                        'Catalyst::Model::DBIC::Schema' => '0',
                                        'Catalyst::Model::Adaptor' => '0',
                                        'Catalyst::Component::InstancePerContext' => '0',
                                        'FCGI::ProcManager' => '0',
                                        'CatalystX::REPL' => '0',
                                        'Catalyst::Plugin::Session::Store::DBIC' => '0',
                                        'FCGI' => '0',
                                        'Catalyst::Plugin::Session::Store::BerkeleyDB' => '0',
                                        'Catalyst::View::Email' => '0',
                                        'Catalyst::Manual' => '5.80',
                                        'Catalyst::Plugin::Static::Simple' => '0',
                                        'CatalystX::SimpleLogin' => '0',
                                        'Catalyst::Plugin::StackTrace' => '0',
                                        'Catalyst::Plugin::Unicode::Encoding' => '0',
                                        'Catalyst::Plugin::I18N' => '0',
                                        'Catalyst::Engine::HTTP::Prefork' => '0',
                                        'Catalyst::Plugin::Authentication' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



