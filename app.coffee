fs  = require 'fs'
pkg = require './package.json'

class Application
  @assets: Object.keys(pkg.dependencies)
  @view: ->
    title: pkg.description
    slides: do ->
      "slides/#{f}" for f in fs.readdirSync(
        './src/slides'
      ) when /.*\.md/i.test(f)

module.exports = Application
