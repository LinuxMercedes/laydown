require_relative 'parser.rb'

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

last line.

END

p text
line = 0
text.split("\n").each { |l|
	print line += 1
	print ' '
	puts l
}

puts Parser.parse(text).render

