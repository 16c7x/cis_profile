#
class cis_profile (
  Enum['firewall', 'firewalld']           $firewall_package,
  Array[String]                           $server_level_1          = [],
  Array[String]                           $server_level_2          = [],
  Array[String]                           $exclude_rules           = [],
){
  class {'::secure_linux_cis':
    time_servers     => ['time1.google.com', 'time1.google.com'],
    profile_type     => 'server',
    allow_users      => ['centos'],
    firewall_package => $firewall_package,
    server_level_1   => $server_level_1 ,
    server_level_2   => $server_level_2 ,
    exclude_rules    => $exclude_rules,
  }
}
