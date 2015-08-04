Vue = require 'vue'
appTemplate = require './templates/app'

new Vue(
  el: '#app'
  data:
    message: 'Hello, Vue.js'
  template: appTemplate
)
