def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, langs| 
    langs.each do |lang, langInfo|
      if !new_hash.key?(lang)
        new_hash[lang] = { :type => langInfo[:type], :style => [] }
        
      end
    new_hash[lang][:style] << style
    end
  end
  
  
  
  
  new_hash
end

