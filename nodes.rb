class Treetop::Runtime::SyntaxNode
	def render
		return render_children
	end

	def render_children
		if elements
			return elements.map { |e| e.render }.join
		else
			return ''
		end
	end
end

module LayDown
	class Laydown < Treetop::Runtime::SyntaxNode
		def render
			return 'Laydown ' + render_children
		end
	end

	class Paragraph < Treetop::Runtime::SyntaxNode
		def render
			return 'Paragraph ' + render_children
		end
	end

	class Line < Treetop::Runtime::SyntaxNode
		def render
			return 'Line ' + render_children
		end
	end

	class Text < Treetop::Runtime::SyntaxNode
		def render
			return 'Text ' + render_children
		end
	end

	class InlineBlock < Treetop::Runtime::SyntaxNode
		def render
			return 'InlineBlock ' + render_children
		end
	end

	class InlineMath < Treetop::Runtime::SyntaxNode
		def render
			return 'InlineMath ' + render_children
		end
	end

	class Header < Treetop::Runtime::SyntaxNode
		def render
			return 'Header ' + render_children
		end
	end

	class H1 < Treetop::Runtime::SyntaxNode
		def render
			return 'H1 ' + render_children
		end
	end

	class H2 < Treetop::Runtime::SyntaxNode
		def render
			return 'H2 ' + render_children
		end
	end

	class H3 < Treetop::Runtime::SyntaxNode
		def render
			return 'H3 ' + render_children
		end
	end

	class H4 < Treetop::Runtime::SyntaxNode
		def render
			return 'H4 ' + render_children
		end
	end

	class H5 < Treetop::Runtime::SyntaxNode
		def render
			return 'H5 ' + render_children
		end
	end

	class H6 < Treetop::Runtime::SyntaxNode
		def render
			return 'H6 ' + render_children
		end
	end

	class CodeBlock < Treetop::Runtime::SyntaxNode
		def render
			return 'CodeBlock ' + render_children
		end
	end
end
