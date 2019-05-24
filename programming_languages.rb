require 'pry'
def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, versions|
    versions.each do |language, type|
      new_hash[language] ||= type
      new_hash[language][:style] ||= []
      new_hash[language][:style] << style
    end
  end
  binding.pry
  new_hash
end
