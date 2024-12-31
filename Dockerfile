FROM busybox

LABEL VENKY="venky.salunkhe@gmail.com"

ADD index.html /www/index.html

EXPOSE 8000

#Create a webserver and sleep forvever

CMD ["httpd", "-p", "8000", "-h", "/www",";", "tail", "-f", "/dev/null"]
