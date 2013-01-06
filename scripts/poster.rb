#!/usr/bin/env ruby
require 'rest-client'

puts RestClient.post "http://localhost:4567/", {:markdown => open('test.md'){|f| f.read}}
