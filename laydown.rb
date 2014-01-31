require 'polyglot'
require 'treetop'
require_relative 'nodes.rb'

Treetop.load "laydown"

parser = LayDownParser.new

text = <<'END'
this text is in a beautiful paragraph and there's nothing you can do about it.

And this is another `inline, inlined code` paragraph.

```CODE
BUT THIS IS A CODE BLOCK
```

INTERVENING PARAGRAPH

		And here is another
	and it might have a couple
	different ways of handling identation
		which vim makes kind of confusing

you all can suck a dick.

END

p text
line = 0
text.split("\n").each { |l|
	print line += 1
	print ' '
	puts l
}

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

