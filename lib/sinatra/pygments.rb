require 'sinatra/base'

module Sinatra
  module Pygments
    def pygmentize(string, lexer = 'text')
      pygmentize = IO.popen("pygmentize -f html -l #{lexer}", "w+") 
      pygmentize.puts string
      pygmentize.close_write 
      result = pygmentize.read
      pygmentize.close
      result
    end 
  end
end
