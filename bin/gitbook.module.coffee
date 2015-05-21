Toa = require 'toa'

toaStatic = (
  require 'toa-static'
)(
  'build'
)

module.exports = ->
  app = Toa()
  app.use toaStatic
  app.listen 3000
