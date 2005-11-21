use inc::Module::Install;

name('Task-Catalyst');
abstract('All you need to start with Catalyst');
author('Sebastian Riedel');
version_from('Catalyst.pm');
license('perl');

requires('Catalyst');
requires('Catalyst::Plugin::FormValidator');
requires('Catalyst::Plugin::FormValidator::Simple');
requires('Catalyst::Plugin::FillInForm');
requires('Catalyst::Plugin::Prototype');
requires('Catalyst::Plugin::Singleton');
requires('Catalyst::Plugin::DefaultEnd');
requires('Catalyst::Plugin::SubRequest');
requires('Catalyst::Plugin::Session');
requires('Catalyst::Plugin::Session::Store::File');
requires('Catalyst::Plugin::Session::State::Cookie');
requires('Catalyst::Plugin::Session::State::URI');
requires('Catalyst::Model::DBIC');
requires('Catalyst::Model::DBIC::Plain');
requires('Catalyst::View::TT');
requires('DBD::SQLite');
requires('YAML');

&WriteAll;
