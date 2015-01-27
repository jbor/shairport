# jbor/shairport

This is my first attempt to make a useful Docker image out of Shairport. 
In it's current state it's pretty basic and unsafe.
Please notice that it's very basic, but it works.

### Requirements
* phusion/baseimage (or Ubuntu)
* Alsa sound enabled on host

### Build
```sh
docker build -t jbor/shairport .
```

### Run
```sh
docker run --name shairport -v /dev/snd:/dev/snd:rw --net="host" --privileged -d jbor/shairport
```

### Todo's
Things that need to be done:
* Isolate the image, so --net="host" is not needed
* Get the sound device to work without running in --privileged mode
* Making it smaller

### Docker Repository
https://registry.hub.docker.com/u/jbor/shairport/
