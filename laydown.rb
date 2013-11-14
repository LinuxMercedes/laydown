require 'polyglot'
require 'treetop'

Treetop.load "laydown"

parser = LayDownParser.new

# BROKEN:
#

text = <<'END'
testing some inline \[stuff [code, asdfasdf with escaped \]] end of line

END

result = parser.parse(text)
if result
	puts 'successs'
	p result
else
	puts 'failure'
	puts parser.failure_reason
	puts parser.failure_line
	puts parser.failure_column
end

