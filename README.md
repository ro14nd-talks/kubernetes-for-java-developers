# Kubernetes for Java Developers - Jaxcon 2016


This contains the slides for the presentation "Kubernetes for Java Developer" which is based on [rhuss/docker-reveal](https://github.com/rhuss/docker-reveal) image

It includes a HTML5 Terminal emulation which can be used from within the browser (look for slides named "Demo"). The demo can be find below `/demo`.

For the demos to work, the following software is installed:

* Java 8
* Maven 3.3.9
* Docker 1.9.1
* Kuberentes 1.2.2
* Emacs 25.0.50.1

The image is best started with the include `run.sh` or for some more fanciness, there is also the [shell script](https://raw.githubusercontent.com/rhuss/jax-kubernetes-2016/jax-2016.sh) which can be used with `$(curl -sL http://bit.ly/kubernetes-jaxcon2016 | sh)`

With this startup script the presentation is then available at `http://docker_host:9000` where `docker_host` is the address of your Docker daemon's host (e.g. `localhost` or the IP of your boot2docker VM).

When watching the presentation you can use `m` for getting a Menu for directly navigating to individual slides. There you will also find section **Links** which useful links to additional information.

Have fun (and feel free to open [issues](https://github.com/rhuss/jax-kubernetes-2016/issues) in case of questions or suggestions).
