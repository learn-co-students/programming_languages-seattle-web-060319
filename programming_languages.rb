require 'pry'

def reformat_languages(languages)
	new_hash = {}
	style = []

	languages.each do |language_style, data|
		#binding.pry
		data.each do |language_name, type_info|
			#binding.pry
			if !new_hash.key?(language_name)
				new_hash[language_name] = {}
				#binding.pry
			end
			
			type_info.each do |type, type_value|
				#binding.pry
				if !new_hash[language_name].key?(:type)
					new_hash[language_name][:type] = (type_value)
				end

			if new_hash[language_name].key?(:style)
				new_hash[language_name][:style].push(language_style)
			
			else
				new_hash[language_name][:style] = [language_style]
			end
			end	
		end
	end

	return new_hash

end









#Iterate over the hash and build a new hash that has the languages as keys that point to a value of a hash that describes the type("interpreted") and style("oo"/"functional").

