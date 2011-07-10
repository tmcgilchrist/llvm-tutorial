#!/usr/bin/env ruby
module Scheme
  require 'readline'

  load './parser.rb'

  class Scheme::REPL
    def loop
      while buf = Readline.readline('>>> ', true)
        begin
          parser = Scheme::Parser.new
          ast = parser.parse(buf)
          puts ast
        rescue Exception => e
          puts "!!! #{e.backtrace.first} #{e} #{e.class.name}"
          for stack in e.backtrace[1..-1]
            puts "     from #{stack}"
          end
        end
      end
    end
  end
end


if __FILE__ == $0
  repl = Scheme::REPL.new
  repl.loop()
end

