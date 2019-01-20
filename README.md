# GitWeb Dockerfile

This is a simple Dockerfile to serve GitWeb.


## Getting Started

### Clone the Repository

Clone this repository using `git clone`

```
$ https://github.com/Pick1a1username/gitweb_dockerfile.git
```

### Build a Docker Image

Move to the directory where the repository is cloned, and build a Docker Image.

```
$ cd gitweb_dockerfile
$ docker build -t gitweb:0.1 .
$ docker image ls
```

### Create a Data Directory

Create a data directory, where repositories will exist.

Of course, you can ignore this step if you want to use directories already exist containing repositories.


```
$ mkdir repos
```


### Run the App

Run the app and browse to `http://localhost:8000`.

Note that the data directory should be mounted to `/repos` in the container.


```
$ docker run -it --rm  -v <a data directory created above>:/repos -p 8000:80 -p 2222:22 gitweb:0.2
$ docker run -it --rm gitweb:0.1 \
-v "<a data directory created above>:/repos" \
-p "8000:80" \
-p "2222:22" \
```

## Notes

* GitWeb in this repository has no access restriction. If you want to use this in public, consider to use `.htaccess`.


## References

* https://dereenigne.org/debian/debian-gitweb-server/
* https://wiki.archlinux.org/index.php/gitweb


## Contributing

Any suggestions are welcome!


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
