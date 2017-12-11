define system::managed_user (
	$homedir = undef
	$password = '$1$eEFWtZca$TI5YVc1w0jkDDzkTd8fsr1',
) 
 
user { $title:
ensure => present,
password => $password,
managehome => true,
}
if $kernel == 'Linux' {
file { "${homedir}/.bashrc":
ensure => file,
owner => $title,
group => $title,
mode => '0644',
source => 'puppet:///modules/system/bashrc'
}