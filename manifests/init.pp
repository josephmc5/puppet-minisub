class minisub inherits minisub::params {
    include minisub::web
    include git
	
#	user { "$services_user":
#        allowdupe => false,
#        ensure => 'present',
#    }

    file { "$base_dir/minisub":
        ensure => directory,
        owner => "$services_user",
        group => "$services_user",
        mode => '0755',
    }
    exec { 'download-minisub':
        command => "/usr/bin/git clone $url src",
        cwd     => "$base_dir/minisub",
        user    => "$services_user",
        creates => "$base_dir/minisub/src",
        require => Class['git'],
    }
}
