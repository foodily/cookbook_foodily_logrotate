# global foodily_logrotate attributes


include_attribute "logrotate"


#foodily global defaults

default[:logrotate][:global][:daily]=true
default[:logrotate][:global][:copytruncate]=true
default[:logrotate][:global][:daily]=true
default[:logrotate][:global][:delaycompress]=true
default[:logrotate][:global][:missingok]=true
default[:logrotate][:global][:nocompress]=false
default[:logrotate][:global][:compress]=true
default[:logrotate][:global][:rotate]=5

