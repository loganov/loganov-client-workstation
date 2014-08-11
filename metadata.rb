name             'loganov-client-workstation'
maintainer       'Loganov Industries, LLC'
maintainer_email 'devops@loganov.com'
license          'All rights reserved'
description      'Master build for client workstations.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'yumgroup' # `yum groupinstall "Group Name"`