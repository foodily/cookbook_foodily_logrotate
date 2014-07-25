# global foodily_logrotate attributes


include_attribute "logrotate"

default[:logrotate][:global][:daily]=true
default[:logrotate][:global][:weekly]=false
default[:logrotate][:global][:monthly]=false
default[:logrotate][:global][:yearly]=false
#foodily global defaults

default[:logrotate][:global][:copytruncate]=true
default[:logrotate][:global][:delaycompress]=true
default[:logrotate][:global][:missingok]=true
default[:logrotate][:global][:nocompress]=false
default[:logrotate][:global][:compress]=true
default[:logrotate][:global][:rotate]=5


default['logrotate']['global'] = {
  'daily' => true,
  'rotate' => 4,
  'create' => '',

  '/var/log/wtmp' => {
    'missingok' => true,
    'monthly' => true,
    'create' => '0664 root utmp',
    'rotate' => 1
  },

  '/var/log/btmp' => {
    'missingok' => true,
    'monthly' => true,
    'create' => '0660 root utmp',
    'rotate' => 1
  }
}
