# next-react-template

## build image

```shell
$ docker build -t node:14 .
```

## setup

```shell
$ make setup type={next,react} app=${APP_NAME}
```

## run your app

```shell
$ make up
```

 ...or

```shell
$ make run name=${APP_NAME}
```

## install package to your app

```shell
$ make install package=${PACKAGE_NAME}
```

## clean install 

```shell
$ make clean-install
```

## attach your container

```shell
$ make attach
```
