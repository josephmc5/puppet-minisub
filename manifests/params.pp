class minisub::params (
    $headphones_host = hiera("headphones_host", "localhost"),
    $headphones_port = hiera("headphones_port", "8083"),
    $headphones_webroot = hiera("headphones_webroot", "/music"),
    $base_dir = hiera("app_dir", "/opt"),
    $external_dns = hiera("external_dns", "localhost"),
    $url = hiera("minisub_git_url", "git://github.com/tsquillario/MiniSub.git"),
    $proxy_nginx = hiera("proxy_nginx", "false"),
    $proxy_apache = hiera("proxy_apache", "false"),
)
{
    $log_dir = "$base_dir/minisub/log"
    $data_dir = "$base_dir/minisub/data"
    $cache_dir = "$base_dir/minisub/cache"
}
