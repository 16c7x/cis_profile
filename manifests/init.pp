# This profile implements https://forge.puppet.com/fervid/secure_linux_cis
# Check the secure_linux_cis module if you want to expose more params.
# @param exclude_rules Which rules to include

class cis_profile (
  Array[String]                           $exclude_rules           = [],
  Array[String]                           $server_level_1          = [],
){
  class {'::secure_linux_cis':
    time_servers     => ['time1.google.com', 'time1.google.com'],
    allow_users      => ['centos'],
    firewall_package => 'firewalld',
    server_level_1   => $server_level_1 ,
    exclude_rules    => $exclude_rules,
  }
  notify { $server_level_1: }
}
