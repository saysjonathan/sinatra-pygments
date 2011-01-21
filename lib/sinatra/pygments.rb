require 'sinatra/base'

module Sinatra
  module Pygments
    @@pygments = '/usr/bin/pygmentize'
    
    @@options = {
      :lexer => '-l',
      :filter => '-F',
      :format => '-f',
      :options => '-O'
    }

    def initialize(string, lexer = :text, format = :html, filter = nil, options = nil)
      args = []
      @@options.each do |k, v|
        args << '#{v} {k}' unless k.nil?
      end
      color(string, args)
    end

    def color(string, *options)
      html = ''
      IO.popen(@@pygments + options.join(' ')).each do |p|
        p.write string
        p.close_write
        html = p.read.strip
      end
      html
    end
  end
end
