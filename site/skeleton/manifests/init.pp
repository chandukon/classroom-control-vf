class skeleton {
file { '/etc/skel':
ensure => directory,
mode =>'755',
}
file { '/etc/skel/.bashrc':
ensure => file,
owner => 'root'
mode =>'0644'
source => 'puppet:///module/skeleton/bashrc'

}
}
