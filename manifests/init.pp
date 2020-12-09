# This profile implements https://forge.puppet.com/fervid/secure_linux_cis
# Check the secure_linux_cis module if you want to expose more params.
# @param exclude_rules Which rules to include

class cis_profile (
  Array[String]                           $exclude_rules           = [],
){
  class {'::secure_linux_cis':
    time_servers     => ['time1.google.com', 'time1.google.com'],
    allow_users      => ['centos'],
    firewall_package => 'firewalld',
    exclude_rules    => $exclude_rules,
  }
  notify { $exclude_rules: }
}
