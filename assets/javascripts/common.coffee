requirejs.config
  urlArgs: "b=" + ((new Date()).getTime())

  shim:
    'app':
      deps: ['basics']
      exports: 'app'
    'basics':
      deps: ['backbone.marionette']
      exports: 'Backbone.Marionette'
    'backbone':
      deps: ['underscore']
    'backbone.babysitter':
      deps: ['backbone']
    'backbone.localstorage':
      deps: ['backbone']
    'backbone.marionette':
      deps: ['backbone', 'backbone.babysitter', 'backbone.localstorage', 'backbone.wreqr', 'jquery']
      exports: 'Marionette'
    'handlebars':
      init: () ->
        #https://github.com/wycats/handlebars.js/issues/333
        window.Handlebars = Handlebars
      exports: 'Handlebars'
    'handlebars.helpers':
      deps: ['handlebars']
    'morris':
      deps: ['jquery', 'raphael']
      exports: 'morris'
    'semantic':
      deps: ['jquery']
      exports: 'semantic'
    'underscore':
      deps: []
      exports: '_'

  paths:
    # Libs
    'app':                              'app'
    'basics':                           'basics'
    'backbone':                         'vendor/backbone/backbone'
    'backbone.babysitter':              'vendor/backbone.babysitter/backbone.babysitter'
    'backbone.epoxy':                   'vendor/backbone.epoxy/backbone.epoxy'
    'backbone.localstorage':            'vendor/backbone.localstorage/backbone.localStorage'
    'backbone.marionette':              'vendor/backbone.marionette/backbone.marionette'
    'backbone.wreqr':                   'vendor/backbone.wreqr/backbone.wreqr'
    'css':                              'vendor/require-css/css'
    'handlebars':                       'vendor/handlebars/handlebars'
    'handlebars.helpers':               'vendor/handlebars-helpers/index'
    'hbs':                              'vendor/require-hbs/hbs'
    'jquery':                           'vendor/jquery/jquery'
    'morris':                           'vendor/morris.js/morris'
    'raphael':                          'vendor/raphael/raphael'
    'require':                          'vendor/requirejs/require'
    'semantic':                         'vendor/semantic/semantic'
    'text':                             'vendor/require-text/text'
    'underscore':                       'vendor/underscore/underscore'
    # Folders
    'j':                                '../javascripts'
    'c':                                '../stylesheets'
    't':                                '../templates/'