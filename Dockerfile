FROM httpd:2.4

COPY power /usr/local/apache2/htdocs/

HEALTHCHECK --interval=30s \
            --timeout=30s \
            CMD curl -f http://127.0.0.1:1754 || exit 1
