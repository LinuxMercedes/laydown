class Treetop::Runtime::SyntaxNode
	def render
		if elements
			elements.map { |e| e.render }
		end
	end
end

module LayDown
	class Laydown < Treetop::Runtime::SyntaxNode
		def render
			puts "LayDown"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class Paragraph < Treetop::Runtime::SyntaxNode
		def render
			puts "Paragraph"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class Line < Treetop::Runtime::SyntaxNode
		def render
			puts "Line"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class Text < Treetop::Runtime::SyntaxNode
		def render
			puts "Text"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class InlineBlock < Treetop::Runtime::SyntaxNode
		def render
			puts "InlineBlock"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class InlineMath < Treetop::Runtime::SyntaxNode
		def render
			puts "InlineMath"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class Header < Treetop::Runtime::SyntaxNode
		def render
			puts "Header"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class H1 < Treetop::Runtime::SyntaxNode
		def render
			puts "H1"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class H2 < Treetop::Runtime::SyntaxNode
		def render
			puts "H2"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class H3 < Treetop::Runtime::SyntaxNode
		def render
			puts "H3"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class H4 < Treetop::Runtime::SyntaxNode
		def render
			puts "H4"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class H5 < Treetop::Runtime::SyntaxNode
		def render
			puts "H5"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class H6 < Treetop::Runtime::SyntaxNode
		def render
			puts "H6"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end

	class CodeBlock < Treetop::Runtime::SyntaxNode
		def render
			puts "CodeBlock"
			if elements
				elements.map { |e|
					e.render
				}
			end
		end
	end
end
