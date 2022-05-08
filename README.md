# php-dev
Docker container to be able to run tests for PHP Src


# usage

You need to have docker on your machine

1. clone this repository

```
git clone --depth 1 https://github.com/BlackScorp/php-dev.git
cd php-dev

```
2. clone the php-src inside the code

```
git clone -b master --depth 1 https://github.com/php/php-src

```
3. Build the container 

```
docker build -t php-dev:latest . 

```
4. Now you can start the container and use the commands within container
```
docker run -it --rm --name=php-dev -v $(pwd)/php-src:/php-src php-dev:latest bash

```

5. Compile PHP within contianer
```
./buildconf && ./configure && make 
```

6. Run tests within container
```
make test
```

