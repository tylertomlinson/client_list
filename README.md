# Getting Started

## Prerequisites

```javascript
ruby -2.6.6
rails -6.0.3
```

## Installing

#### Clone repository:

```sh
git clone git@github.com:tylertomlinson/monster_shop_2001.git
```

#### Navigate into directory:

```sh
cd monster_shop_2001
```

#### Run Setup:

```sh
bin/setup
```

#### Fire up local server: (http://localhost:3000)

```sh
rails s
```


# API Endpoints

### GET /clients
<p align="center">
  <img src="https://i.imgur.com/Jb7nkX2.png">
</p>

### GET /clients/:client_id
<p align="center">
  <img src="https://i.imgur.com/hHtXVMC.png">
</p>

### POST /clients name=tyler subscribed=true
  *POST /clients?name=tyler&subscribed=true*
<p align="center">
  <img src="https://i.imgur.com/wesx1a6.png">
</p>

### GET /reviews client_Id=487
  *GET /reviews?client_Id=487
 <p align="center">
  <img src="https://i.imgur.com/7jWryED.png">
</p>





