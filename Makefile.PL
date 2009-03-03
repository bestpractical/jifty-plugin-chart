use inc::Module::Install 0.46;
name('Jifty-Plugin-Chart');
version_from('lib/Jifty/Plugin/Chart.pm');

requires('Jifty');
recommends('Chart::Base');
recommends('GD');          # for a testing hack
recommends('GD::Graph');
recommends('XML::Simple');
recommends('Image::Info'); # for testing

auto_install();
tests(qw( t/*/t/*.t ));

install_share;

WriteAll;
