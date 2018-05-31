# Minimal test case for running AWS SAM CLI under Docker

To run SAM locally:

    sam local invoke -t template.yml -e event.json HelloWorld

Running SAM locally succeeds:

    {"body":"Hello, World!"}

To run SAM under Docker:

    docker build -t hello .
    docker run \
        -v $(pwd):/usr/src/app \
        -v /var/run/docker.sock:/var/run/docker.sock \
        hello sam local invoke -t template.yml -e event.json HelloWorld

Running SAM under Docker fails:

    Unable to import module 'index': Error
        at Function.Module._resolveFilename (module.js:469:15)
        at Function.Module._load (module.js:417:25)
        at Module.require (module.js:497:17)
        at require (internal/module.js:20:19)
