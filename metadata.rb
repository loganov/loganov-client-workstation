name             'loganov-client-workstation'
maintainer       'Loganov Industries, LLC'
maintainer_email 'devops@loganov.com'
license          'All rights reserved'
description      'Master build for client workstations.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.8'

recipe            'loganov-client-workstation', 'Default Client Workstation Configuration'
recipe            'loganov-client-workstation::package-groups', ''
recipe            'loganov-client-workstation::packages', ''
recipe            'loganov-client-workstation::repos', ''
recipe            'loganov-client-workstation::source', ''

depends          'yum'
depends          'yumgroup' # `yum groupinstall "Group Name"`