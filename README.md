# Fakerest Docker

This project helps to quickly dockerize [Fakerest](https://github.com/karthik-krishnan/fakerest) and provide a quick way to create a fake/mock service with minimal configuration.

## Installation

Fakerest requires a routes.yml configuration file and a views folder containing the response files in the form of .erb templates.  All you have to do is create a Dockerfile that pulls the fake_service:latest

### Build Docker Image
```
$ docker build -t fakerest_service .
```

## Usage

1. Create a folder for your fake service with a Dockerfile like the following :

```docker
FROM fake_service:latest

COPY views ./views
COPY routes.yml ./

CMD ["./run.sh"]
```

2. Build your docker image

```
$ docker build -t my_service .
```

3. Start your service

```
$ docker run -p 9000:9000 my_service
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/karthik-krishnan/fakerest-docker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).