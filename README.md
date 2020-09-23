# CIS_profile

## What does it do

This profile implements https://forge.puppet.com/fervid/secure_linux_cis

## How to configure it

Check the secure_linux_cis module if you want to expose more params.

* @param firewall Which Firewall provider to use.
* @param enforcement_level Which level to enforce.
* @param server_level_1 List of CIS server rules level 1.
* @param server_level_2 List of CIS server rules level 2.
* @param exclude_rules Which rules to include.

## It requires 
* https://forge.puppet.com/fervid/secure_linux_cis
* And all of the dependencies for that module.