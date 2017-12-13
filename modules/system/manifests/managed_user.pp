define system::managed_user (
	$password  = '$1$8PXwL66U$lRQkeCgMWyO5/weIkQ7WD0',
	$home_directory = undef

) {
	user { "${title}":
		ensure     => present,
		password   => "${password}",
		managehome => true,
		
	}
	
	if $facts['fact_name'] == 'Linux' {
		file { "${home_directory}/.bashrc":
			ensure => file,
			owner  => "${title}",
			group  => "${title}",
			mode   => '0644',
			source => 'puppet:///modules/system/bashrc'
		}
	}

}
