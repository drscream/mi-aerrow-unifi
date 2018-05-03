if mdata-get nginx_ssl > /dev/null 2>&1; then
	mdata-get nginx_ssl > /opt/local/etc/nginx/ssl/nginx.pem
	svcadm enable svc:/pkgsrc/nginx:default
fi
