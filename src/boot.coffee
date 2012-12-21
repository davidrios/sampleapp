requirejs.config
  # By default load any module IDs from assets
  baseUrl: 'assets'

  # except, if the module ID starts with "app",
  # load it from the js/app directory. paths
  # config is relative to the baseUrl, and
  # never includes a ".js" extension since
  # the paths config could be for a directory.
  paths:
    app: '../app'
    templates: '../templates'
    views: '../views'

  # Configure the dependencies and exports for older, traditional "browser globals"
  # scripts that do not use define() to declare the dependencies and set a module value
  shim:
    'backbone':
      deps: ['underscore', 'jquery']
      exports: ['Backbone']


define (require, exports, module) ->
  # load the app
  app = require 'app/main'
  app()