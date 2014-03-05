name 'fiddler'
maintainer 'me'
maintainer_email 'me@example.com'
license 'yep'
description 'awesome'
long_description 'awesomer'
ver_path = File.join(File.dirname(__FILE__), 'version.txt')
version ((IO.read(ver_path) if File.exists?(ver_path)) || '0.1.0').chomp
supports         'windows'
depends          'windows', '>= 1.2.6'
depends          'dotnetframework'
