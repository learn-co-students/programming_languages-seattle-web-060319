require 'pry'

def reformat_languages(languages)
  	# your code here
	h = Hash.new
  	languages.each do |style, lang_hash|
  		lang_hash.each do |lang_name, type_hash|
  			if h.has_key?(lang_name) == false
  				#builds a new key/value in the hash
				h[lang_name] = {:type => type_hash[:type],
					:style => [style]}
			else
				h[lang_name][:style] << style
			end
		end
	end
	
	return h

end
