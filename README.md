### **EeasyEDA** local autorouter container

#### Usage from source code

```
git clone https://github.com/denis-itskovich/easyeda-autorouter.git
cd easyeda-autorouter
docker-compose build [--build-arg VER=<EDA_VERSION>]
docker-compose up -d
```

#### Usage from dockerhub

```
docker run -d -p3579:3579 slimgears/easyeda-router:latest
```

#### Compose file:

```
version: "3.7"
services:
  easyeda:
    name: easyeda-router
    image: slimgears/easyeda-router
    restart: always
    ports:
        - "3579:3579"
```

#### Sanity check after deployment

Open in browser: [http://localhost:3579/api/whois](http://localhost:3579/api/whois)

You should see the blank page with the only line: 

```
EasyEDA Auto Router
```
