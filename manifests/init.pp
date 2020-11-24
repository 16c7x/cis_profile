# This profile implements https://forge.puppet.com/fervid/secure_linux_cis
# Check the secure_linux_cis module if you want to expose more params.
# @param firewall Which Firewall provider to use
# @param enforcement_level Which level to enforce
# @param server_level_1 List of CIS server rules level 1
# @param server_level_2 List of CIS server rules level 2
# @param exclude_rules Which rules to include

class cis_profile (
  Enum['firewall', 'firewalld']           $firewall_package,
  Enum['1', '2']                          $enforcement_level       = '1',
  Array[String]                           $server_level_1          = [],
  Array[String]                           $exclude_rules           = [],
){
  class {'::secure_linux_cis':
    time_servers     => ['time1.google.com', 'time1.google.com'],
    profile_type     => 'server',
    allow_users      => ['centos'],
    firewall_package => $firewall_package,
    server_level_1   => $server_level_1 ,
    exclude_rules    => $exclude_rules,
  }
  notify { $server_level_1: }
}
