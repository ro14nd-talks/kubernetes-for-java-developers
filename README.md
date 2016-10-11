# Kubernetes for Java Developers

This contains the slides and more for my talk "Kubernetes for Java
Developer". This deck comes as a Docker image which is
based on [rhuss/docker-reveal](https://github.com/rhuss/docker-reveal)
image.

It includes a HTML5 Terminal emulation which can be used from within
the browser (look for slides named "Demo"). The demo can be found in
`/demo`. For your convenience the Maven repository is already
prepopulated so the demos will work offline, too.

The image is best started with the include `run.sh` or for some more
fanciness, there is also a [shell script](https://raw.githubusercontent.com/ro14nd-talks/kubernetes-for-java-developers/master/run-container.sh) which can be used with e.g. `firefox $(curl -sL bit.ly/k8s-for-java-devs | sh)`

With this startup script the presentation is then available at
`http://docker_host:9000` where `docker_host` is the address of your
Docker daemon's host (e.g. `localhost` or the IP of your boot2docker
VM).

In order to recreate the image, use [build.sh](build.sh). The image is
configured to use a Kubernetes cluster at `http://192.168.23.200:8080` but
this can be overridden when building the image with e.g. `build.sh
http://1.2.3.4:8080`.

After startup, a
[Kubernetes Visualizer](https://github.com/brendandburns/gcp-live-k8s-visualizer)
is available at `http://docker_host:8001/k8s/` and can be used to
visualize the demo:

![Demo](https://raw.githubusercontent.com/rhuss/jax-kubernetes-2016/master/demo.png
 "Demo in Action")

When watching the presentation you can use `m` for getting a Menu for
directly navigating to individual slides. There you will also find
section **Links** which useful links to additional information. The
links can be found below, too.

The demo can be found in `/demo`. There are 5 Git branches available:

* 1-java
* 2-docker
* 3-kubernetes
* 4-ping-update
* 5-pong-update

The demo's full source is also available from [https://github.com/rhuss/ping-pong](https://github.com/rhuss/ping-pong).

Some useful commands to use (some available only in certain branches)

* `mvn clean install` : Build everything
* In `pong`, `mvn wildfly-swarm:run`
* In `ping`, `mvn spring-boot:run` to start
* In `ping` or `pong`, `mvn package docker:build` builds the Docker image
* `mvn -N docker:start -Ddocker.follow` : Run the demo in a local Docker daemon
* In branch `5-pong-update`, `pong` contains the Spring Boot implementation of the Jax RS service, useful for
  comparing both technologies

Have fun (and feel free to open
[issues](https://github.com/ro14nd-talks/kubernetes-for-java-developers/issues) in case
of questions or suggestions).


### Software

* Java 8
* Maven 3.3.9
* Docker 1.10.1
* kubectl 1.2.2
* Emacs 25.0.50.1

### Links

* **Demo**
  * [Ping Pong](https://github.com/rhuss/ping-pong)
  * [Kubernetes Visualizer](https://github.com/saturnism/gcp-live-k8s-visualizer)
  * [Kubernetes Visualizer (Original](https://github.com/brendandburns/gcp-live-k8s-visualizer))
* **Docker**
  * [fabric8io/docker-maven-plugin](https://github.com/fabric8io/docker-maven-plugin)
  * [docker-maven-plugin Shootout](https://github.com/fabric8io/shootout-docker-maven)
* **Raspberry Pi Cluster**
  * [Hypriot](http://blog.hypriot.com/)
  * [Ansible Playbooks](https://github.com/Project31/ansible-kubernetes-openshift-pi3)
  * [Raspberry Pi 3](http://www.watterott.com/de/Raspberry-Pi-3)
  * [Micro SD Card (32 GB)](http://www.amazon.de/SanDisk-Android-microSDHC-Speicherkarte-SD-Adapter/dp/B013UDL5RU)
  * [WLAN Router](http://www.amazon.de/TP-Link-TL-WR802N-Router-WLAN-Geschwindigkeit-300Mbit/dp/B00XPUIDFQ)
  * [USB wires](http://www.amazon.de/Anker-PowerLine-Kevlarfaser-Lebensdauer-Smartphones-Schwarz/dp/B016BEVNK4?)
  * [Power Supply](http://www.amazon.de/Anker-PowerPort-Family-Sized-Ladeadapter-Technologie/dp/B00PTLSH9G)
  * [Case](http://www.amazon.de/H%C3%B6henverstellbares-stapelbares-Abstandsbolzen-Vullers-Tech/dp/B00NB1WPEE)
  * [Intermediate Case Plate](http://www.amazon.de/Intermediate-Stacking-Raspberry-Vullers-Tech/dp/B00NB1WQZW)
* **Kubernetes**
  * [Kubernetes](http://kubernetes.io)
  * [OpenShift](http://www.openshift.com)
  * [Fabric8](http://fabric8.io)
* **Bonus**
  * [rhuss/docker-reveal](https://hub.docker.com/r/rhuss/docker-reveal)
  * [Slide Deck as PDF](slides/kubernetes-for-java-developers.pdf)
  * [Slide Deck as Docker Container](https://github.com/rhuss/jax-kubernetes-2016)
* **ro14nd**
  * [Blog](https://ro14nd.de)
  * [Fabric8](http://fabric8.io)
  * [Docker Maven Plugin](https://github.com/fabric8io/docker-maven-plugin)
  * [Jolokia](https://www.jolokia.org)

### Tour

* [JAX](https://jax.de/), 18.04 - 22.04.2016, Mainz
* [JBCNConf](http://www.jbcnconf.com/2016/), 16.06 - 18.06.2016, Barcelona
* [JUG Nürnberg](http://www.meetup.com/de-DE/JUG-Nurnberg/), 22.06.2016, Nuremberg
* [Docker Meetup Bamberg](http://www.meetup.com/de-DE/Docker-Bamberg/), 14.07.2016, Bamberg
* [jugh!](http://www.jugh.de/), 29.09.2016, Kassel
* [JavaSi'16](http://www.sioug.si/index.php/konferenca-javasi-16/java-2/175-kubectl-in-60-min), 17.10.2016, Portoroz
