require 'pry'
def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, languages|
    languages.each do |language, type|
      new_hash[language] = type
      new_hash[language][:style] = style
    end
    # if new_hash[:oo]language == new_hash[:functional]language 
    #   new_hash[language][:style] = :oo
    #end
  end
  binding.pry
  new_hash
end
