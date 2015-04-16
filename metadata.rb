name             'errbit-server'
maintainer       'Kawahara Taisuke'
maintainer_email 'kwhrtsk@gmail.com'
license          'MIT License'
description      'Installs/Configures errbit-server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'git'
depends          'rbenv'
depends          'ruby_build'
depends          'mongodb'
depends          'application'
depends          'unicorn'
depends          'service_factory'
depends          'nodejs'
depends          'logrotate'
supports         'centos'
supports         'ubuntu'
recipe           'errbit-server::default', 'Install and configure Errbit server'