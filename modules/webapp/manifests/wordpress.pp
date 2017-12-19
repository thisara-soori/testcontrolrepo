class webapp::wordpress {
 
  #include ::wordpress
  class { 'wordpress':
    install_url => "http://10.0.2.15",
  }
  
  class {'webapp':
    docroot => '/opt/wordpress',
    app_name => 'wordpress',
  }
  
}
