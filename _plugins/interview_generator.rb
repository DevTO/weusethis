module Jekyll
	class InterviewConverter < Converter

		def matches(ext)
			ext =~ /interview/i
		end
		
		def output_ext(ext)
			".html"
		end
		
		def convert(content)
			Maruku.new(content).to_html
		end
	end
end
