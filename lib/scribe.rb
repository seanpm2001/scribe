
require 'rubygems'
require 'thrift'

HERE = File.expand_path(File.dirname(__FILE__))

$LOAD_PATH << "#{HERE}/../vendor/gen-rb"
require "#{HERE}/../vendor/gen-rb/scribe"

Object.const_set("ScribeThrift", Scribe)
Object.const_remove("Scribe")

$LOAD_PATH << "#{HERE}"
require 'scribe/scribe'
require 'scribe/debug' if ENV['DEBUG']