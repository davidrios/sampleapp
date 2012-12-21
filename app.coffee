express = require 'express'
app = express.createServer()

paths =
  public: __dirname + '/public'

# views stuff
app.set 'title', 'SampleApp'

app.use express.bodyParser()
app.use express.methodOverride()

app.use(express.logger())

app.use app.router

app.use express.static(paths.public)

app.use require('appcompiler')
  src:'src'

js.root = ''
css.root = ''

app.use express.errorHandler(dumpExceptions: true, showStack: true)

app.get '/', (req, res) ->
  res.redirect '/index.html'

  
if require.main == module
  app.listen process.env.PORT || 3000
  console.log "Express server listening on port %d in %s mode", 3000, app.settings.env

module.exports = app