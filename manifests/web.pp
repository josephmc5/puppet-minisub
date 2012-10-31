class minisub::web inherits minisub::params {
    if $proxy_nginx {
	include nginx
        nginx::resource::location { 'minisub':
            ensure   => present,
            location_alias => "$base_dir/minisub/src/",
            location => '/minisub',
            vhost    => "$external_dns",
        }
    }
}
