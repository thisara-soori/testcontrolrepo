node 'node1' {
notify { "Node ${fqdn} has a node definition": }
}
node default {
notify { "Node ${fqdn} has no node definition": }
}
