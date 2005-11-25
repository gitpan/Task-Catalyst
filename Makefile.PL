use inc::Module::Install;

name('Task-Catalyst');
abstract('All you need to start with Catalyst');
author('Sebastian Riedel');
version_from('Catalyst.pm');
license('perl');

include('ExtUtils::AutoInstall');

requires( 'Catalyst' => '5.58' );

features(
    'FormValidator Support' => [
        -default                          => 1,
        'Catalyst::Plugin::FormValidator' => 0
    ],
    'FormValidator::Simple Support' => [
        -default                                  => 1,
        'Catalyst::Plugin::FormValidator::Simple' => 0
    ],
    'FillInForm Support' => [
        -default                       => 1,
        'Catalyst::Plugin::FillInForm' => 0
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
    'I18N Support' => [
        -default                 => 1,
        'Catalyst::Plugin::I18N' => 0
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
    'SQLite Support' => [
        -default      => 1,
        'DBD::SQLite' => 0
    ],
    'YAML Support' => [
        -default => 1,
        'YAML'   => 0
    ]
);

auto_install();
&WriteAll;
