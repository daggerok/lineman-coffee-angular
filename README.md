lineman-coffee-angular [![build](https://api.travis-ci.org/daggerok/lineman-coffee-angular.svg?branch=master)](https://api.travis-ci.org/daggerok/lineman-coffee-angular.svg?branch=master)
======================
- web frameworks: linamen, angular
- testing: jasmine angulat-mocks
- lang: coffee

### npm log

1 lineman install
    
    $ npm init
    ...
    $ npm i lineman
    $ node_modules/.bin/lineman new --coffee --skip-examples --install lineman-coffee-angular
    $ cd lineman-coffee-angular/

2 update nodejs information
    
    $ vim package.json
    
3 install needed modules with save dev
    
    $ npm i -S angular
    $ npm i -D angular-mocks phantomjs bootstrap jquery
    
4 copy all used vendors

- js

        $ cp node_modules/jquery/dist/jquery.js vendor/js/
        $ cp node_modules/bootstrap/dist/js/bootstrap.js vendor/js/
        $ cp node_modules/angular/angular.js vendor/js/

- css
        
        $ cp node_modules/bootstrap/dist/css/bootstrap.css vendor/css/
        $ cp node_modules/bootstrap/dist/css/bootstrap.css.map vendor/css/
        $ mkdir -p vendor/css/less/mixins
        $ cp node_modules/bootstrap/less/*.less vendor/css/less/
        $ cp node_modules/bootstrap/less/mixins/*.less vendor/css/less/mixins/

- test js
        
        $ cp node_modules/angular-mocks/angular-mocks.js spec/helpers/
        
5 update config/files.coffe and replace {} with

  ``` coffee
  #Override file patterns here
  js: 
    vendor: [
      "vendor/js/jquery.js"
      "vendor/js/bootstrap.js"
      "vendor/js/angular.js"
    ]
  , css:
    vendor: [
      "vendor/css/bootstrap.css"
    ]
  , coffee:
    app: [
      "app/js/application.coffee"
      "app/js/**/*.coffee"
    ]
  ```
6 build or run application
    
    $ npm run build
    $ npm run start
    $ npm run production8000
7 add app/js/application.coffee with angluar.module declaration

8 update app/pages/index.us: add ng-app directives, favicon

9 add angular controller and spec for it

10 run test or use TDD command
    
    $ npm run test
    $ npm run tdd

11 tunr on proxy sserver in config/application.coffee
  
  ``` coffee
  server: {
    apiProxy: {
      enabled: true,
      host: 'localhost',
      port: 3000
      profix: '/api'
    }
  }
  ```

12 configure proxy api in config/server.coffee
  
  ``` coffee
  app.get '/api/name', (req, res) ->
    res.json name: "Max"
  ```
13 verify proxy api
run in dev mode and check hi, Max! on left top side of page

    $ npm run start 

run in prodution8000 mode and verify hi, undefined!

(: