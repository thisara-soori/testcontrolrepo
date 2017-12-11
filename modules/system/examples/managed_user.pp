# Linux requires a hash for the password. This one is 'Puppet8Labs!'
# Generate your own with the command `openssl passwd -1` if you'd like.
$password = '$1$eEFWtZca$TI5YVc1w0jkDDzkTd8fsr1'

system::managed_user { ['user']:
  password => $password,
}
