#
class cis_profile (
Array[String]                           $workstation_level_1     = [],
Enum['firewall', 'firewalld']           $firewall_package,
){
    class {'::secure_linux_cis':
    time_servers  => ['time1.google.com', 'time1.google.com'],
    profile_type  => 'server',
    allow_users   => ['centos'],
    firewall_package => $firewall_package,
    server_level_1 => $workstation_level_1 ,
  }
}
