name             'hf-basics'
maintainer       'Hello Future Ltd'
maintainer_email 'hello@hellofutu.re'
license          'All rights reserved'
description      'Installs/Configures phpapp'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "locale"
depends "fail2ban"
depends "ntp"
depends "sudo"
depends "firewall"
depends "mosh"
