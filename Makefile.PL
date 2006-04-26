use inc::Module::Install;

name('Task-Catalyst');
abstract('All you need to start with Catalyst');
author('Sebastian Riedel');
version_from('Catalyst.pm');
license('perl');

include('ExtUtils::AutoInstall');

print
"I'm sorry but this module is deprecated now, there will be a replacement soon\n";

auto_install();
&WriteAll;
