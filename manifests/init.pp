class minisub inherits minisub::params {
    include minisub::web
    include git
	
	user { 'minisub':
        allowdupe => false,
        ensure => 'present',
        shell => '/bin/bash',
        home => "$base_dir/minisub",
        password => '*',
    }

    file { "$base_dir/minisub":
        ensure => directory,
        owner => 'minisub',
        group => 'minisub',
        mode => '0755',
    }
    exec { 'download-minisub':
        command => "/usr/bin/git clone $url src",
        cwd     => "$base_dir/minisub",
        user    => 'minisub',
        creates => "$base_dir/minisub/src",
        require => Class['git'],
    }
}
