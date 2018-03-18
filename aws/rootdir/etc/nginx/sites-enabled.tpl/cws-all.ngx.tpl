server {
    listen 8080 default_server;
    real_ip_header    X-Forwarded-For;
    set_real_ip_from  VPC_CIDR;
	
    location / { alias /var/www/html/; }

    location /centriukas/ {
        proxy_pass http://127.0.0.1:8889/;
        client_max_body_size 100M;
    }

    location /jau/ {
        proxy_pass http://127.0.0.1:9000/;
        client_max_body_size 100M;
    }

    location /vyr/ {
        proxy_pass http://127.0.0.1:9001/;
        client_max_body_size 100M;
    }

    location /vyr-eng/ {
        proxy_pass http://127.0.0.1:9002/;
        client_max_body_size 100M;
    }

    location /mok/ {
        proxy_pass http://127.0.0.1:8890/;
        client_max_body_size 100M;
    }
}