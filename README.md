# webmin-docker
Webmin, dockerized.

I intend to use this container to take advantage of webmin's convenient configuration capabilities,
but on specifically mounted docker volumes, and only when the webmin container is running.

Based on:
 - https://github.com/jcejohnson/docker-webmin
 - http://www.webmin.com/deb.html
 - http://forum.solid-run.com/linux-on-cubox-i-and-hummingboard-f8/-debian-webmin-install-apt-show-versions-error-t684.html

I like to base all my images on either official images maintained by their respective groups, or images whose contents can be copied to an empty Dockerfile via cut & paste. So, I went with the official php-apache image, which is a debian-Jesse image, and the official webmin repo. I used jcejohnson's Dockerfile as a reference. I had to solve a weird quirk with apt-show-versions, which was possible with the link from solid-run.

