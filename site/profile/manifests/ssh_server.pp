class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIRgZCAgW+jiMqv3xbqBlLugbPFmU0KgXf15CiT3y3w0Iagd5xXDagrFhKcFEGa+UUjMoprI0S4yewBm39nihTXF2K0JG2dVxM3rNAothRUTlvqgCRUkFaMgSydLBi8dyOEsMN0bllVEg+F6gVo9iW+V7a3L/AqZBTUaE3r5r+y+CqXMaXRrnOw4Y9fnWbcAKLdrjFu+1qlpgL3kGv7pWt9GX3MV0yHdNwesOSEe1Bs1sIJ6m5Ro3r9qDHQGovU4BEH2SQc8k1Ts/nfOlGoZzWVq+/bcAoV0x5R7G5s0cFKqrYdsGrOhTXdiROHUfIrwq4bwKYwBFIiYNfhiC+MTYZ', 
       }
}       
