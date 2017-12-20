node 'node1' {
#notify { "Node ${fqdn} has a node definition": }
$message = lookup('message')
notify { $message: }

#notify { "Root's home directory is ${homedir('root')}": }
#notify { "Test's home directory is ${homedir('test')}": }
}
node default {
#notify { "Node ${fqdn} has no node definition": }
$message = lookup('message')
notify { $message: }
}
