use inc::Module::Install;

name('Task-Catalyst');
abstract('All you need to start with Catalyst');
author('Sebastian Riedel');
version_from('Catalyst.pm');
license('perl');

include('ExtUtils::AutoInstall');

requires( 'Catalyst' => '5.64' );

features(
    'Log4perl Support' => [
        -default                  => 1,
        'Params::Validate'        => 0,
        'Catalyst::Log::Log4perl' => 0
    ],
    'HTML::Widget Support' => [
        -default                         => 1,
        'Date::Calc'                     => 0,
        'Catalyst::Plugin::HTML::Widget' => 0
    ],
    'Stacktrace Advanced Debugging Support' => [
        -default                       => 1,
        'Catalyst::Plugin::StackTrace' => 0
    ],
    'Prototype Support' => [
        -default                      => 1,
        'Catalyst::Plugin::Prototype' => 0
    ],
    'Singleton Support' => [
        -default                      => 1,
        'Catalyst::Plugin::Singleton' => 0
    ],
    'DefaultEnd Support' => [
        -default                       => 1,
        'Catalyst::Plugin::DefaultEnd' => 0
    ],
    'SubRequest Support' => [
        -default                       => 1,
        'Catalyst::Plugin::SubRequest' => 0
    ],
    'Session Support' => [
        -default                                   => 1,
        'Catalyst::Plugin::Session'                => 0,
        'Catalyst::Plugin::Session::Store::File'   => 0,
        'Catalyst::Plugin::Session::State::Cookie' => 0,
        'Catalyst::Plugin::Session::State::URI'    => 0
    ],
    'Authentication/Authorization Support' => [
        -default                                            => 1,
        'Catalyst::Plugin::Authentication'                  => 0,
        'Catalyst::Plugin::Authentication::Store::DBIC'     => 0,
        'Catalyst::Plugin::Authentication::Store::Htpasswd' => 0,
        'Catalyst::Plugin::Authorization::ACL'              => 0,
        'Catalyst::Plugin::Authorization::Roles'            => 0,
    ],
    'I18N Support' => [
        -default                 => 1,
        'Catalyst::Plugin::I18N' => 0
    ],
'XMLRPC Support (WARNING: requires XML::Parser which requires a C compiler and expat to be installed!)'
      => [
        -default                   => 0,
        'XML::Parser'              => 0,
        'Catalyst::Plugin::XMLRPC' => 0
      ],
    'Pluggable Application Support' => [
        -default                      => 1,
        'Catalyst::Plugin::Pluggable' => 0
    ],
    'DBIx::Class Support' => [
        -default                       => 1,
        'Catalyst::Model::DBIC'        => 0,
        'Catalyst::Model::DBIC::Plain' => 0
    ],
    'Template::Toolkit Support' => [
        -default             => 1,
        'Catalyst::View::TT' => 0
    ],
    'Test::WWW::Mechanize Support' => [
        -default                         => 1,
        'Test::WWW::Mechanize::Catalyst' => 0
    ],
    'SQLite Support (WARNING: requires a C compiler!)' => [
        -default      => 0,
        'DBD::SQLite' => 0
    ]
);

auto_install();
&WriteAll;
