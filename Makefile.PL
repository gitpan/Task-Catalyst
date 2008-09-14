use inc::Module::Install 0.67;

name     'Task-Catalyst';
all_from 'lib/Task/Catalyst.pm';

requires 'Catalyst'        => '5.7007';
requires 'Catalyst::Devel' => '1.02';

feature 'Apache/mod_perl Support',
  -default                   => 1,
  'Catalyst::Engine::Apache' => '1.09';

feature 'FastCGI Support',
    -default            => 1,
    'FCGI'              => 0,
    'FCGI::ProcManager' => 0;

feature 'PAR Support',
    -default => 1,
    'PAR'    => 0;

feature 'Log4perl Support',
    -default                  => 1,
    'Params::Validate'        => 0,
    'Catalyst::Log::Log4perl' => '0.1';

feature 'HTML::FormFu Support',
    -default                         => 1,
    'Catalyst::Controller::HTML::FormFu' => '0.03';

feature 'FormBuilder Support',
    -default                        => 0,
    'Catalyst::Controller::FormBuilder' => '0.03';

feature 'Stacktrace Advanced Debugging Support',
    -default                       => 1,
    'Catalyst::Plugin::StackTrace' => '0.02';

feature 'Session Support',
    -default                                   => 1,
    'Catalyst::Plugin::Session'                => '0.05',
    'Catalyst::Plugin::Session::Store::File'   => '0.07',
    'Catalyst::Plugin::Session::State::Cookie' => '0.02',
    'Catalyst::Plugin::Session::State::URI'    => '0.02';

feature 'Authentication/Authorization Support',
    -default                                            => 1,
    'Catalyst::Plugin::Authentication'                  => '0.05',
    'Catalyst::Authentication::Store::DBIx::Class'      => '0.04',
    'Catalyst::Plugin::Authorization::ACL'              => '0.06',
    'Catalyst::Plugin::Authorization::Roles'            => '0.03';

feature 'I18N Support',
    -default                 => 1,
    'Catalyst::Plugin::I18N' => '0.05';

feature 'DBIx::Class Support',
    -default                        => 1,
    'Catalyst::Model::DBIC::Schema' => '0.08';

feature 'Template::Toolkit Support',
    -default             => 1,
    'Catalyst::View::TT' => '0.22';

feature 'Test::WWW::Mechanize Support',
    -default                         => 1,
    'Test::WWW::Mechanize::Catalyst' => '0.35';

feature 'SQLite Support (WARNING: requires a C compiler!)',
    -default      => 0,
    'DBD::SQLite' => 0;

auto_install;
WriteAll;
