module Scheme
  require 'parslet'

  class Scheme::Parser < Parslet::Parser

    rule(:lparen) { str('(') >> space? }
    rule(:rparen) { str(')') >> space? }

    rule(:space)  { match('\s').repeat(1) }
    rule(:space?) { space.maybe }

    rule(:number) { match('[0-9]').repeat(1).as(:int) >> space? }

    rule(:identifier) { match('[A-Za-z]').repeat(1).as(:identifier) >> space? }
    
    rule(:expression) { identifier | number |
      lparen >> expression >> rparen }
    root :expression
  end
end
