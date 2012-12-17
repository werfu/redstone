events = require 'events'

class Base extends events.EventEmitter
    log: (level, message) => @emit 'log', level, message, @meta
    debug: (message) => @log 'debug', message
    info: (message) => @log 'info', message
    warn: (message) => @log 'warn', message
    error: (message) => @log 'error', message

module.exports = Base