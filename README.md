lineman-coffee-angular
======================

1 lineman install
    $ npm init
    ...
    $ npm i lineman
    $ node_modules/.bin/lineman new --coffee --install lineman-coffee-angular
    $ cd lineman-coffee-angular

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
        $ mkdir vendor/css/less
        $ cp node_modules/bootstrap/less/*.less vendor/css/less/
        $ mkdir vendor/css/less/mixins
        $ cp node_modules/bootstrap/less/mixins/*.less vendor/css/less/mixins/

- test js
        
        $ cp node_modules/angular-mocks/angular-mocks.js spec/helpers/
5 remove hello examples
    
    $ rm -rf app/js/hello.coffee app/templates/hello.us spec/hello-spec.coffee
6 update config/files.coffe and replace {} with

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
7 build or run application
    
    $ npm run build
    $ npm run start
    $ npm run production
8 add application.coffee with angluar.module declaration
9 update app/pages/index.us: add ng-app directives, favicon
10 add angular controller and spec for it
11 run test or use TDD command
    
    $ npm run test
    $ npm run tdd