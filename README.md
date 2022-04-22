[![Heroku](https://www.herokucdn.com/deploy/button.svg)](http://heroku.com/deploy?template=https://github.com/L1M0NK3Y/kali-ttyd-heroku)


# kali-ttyd-heroku

ttyd web-terminal demon running on kali instance. This can be used share the docker bash shell as a web terminal.

### Before building the docker file

* use kali docker instance from dockerhub - `docker pull kalilinux/kali-rolling`

### How to build

Image name and version aren't provided in the Dockerfile so do 

``` docker build -t ttyd/test:v1 .```

### Run docker

This will forward port 80 of docker to port 8080 of host

``` docker run -p 8080:80 --name ttyd -it ttyd/test:v1 bash ```

### ttyd options

ttyd is made to run with credentials user:pass
