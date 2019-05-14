def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |styles, data|
    data.each do |language, types|
      new_hash[language] = {}
    end
  end
  
  languages.each do |styles, data|
    data.each do |languages, type|
      new_hash.each do |language, data|
        if language == languages
          data[:type] = type[:type]
        end
      end
    end
  end
  new_hash.each do |key, value|
    value[:style] = [] 
  end

  languages[:oo].each do |language, value|
    new_hash.each do |lan, data|
      if language == lan
        data[:style] << :oo 
      end
    end
  end
  
  languages[:functional].each do |language, value|
    new_hash.each do |lan, data|
      if language == lan
        data[:style] << :functional 
      end
    end
  end
  new_hash
end


