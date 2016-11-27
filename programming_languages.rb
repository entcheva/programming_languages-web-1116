require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |type, language_hash|
    language_hash.each do |language, type_hash|
      if new_hash[language] == nil
        new_hash[language] = type_hash
        new_hash[language][:style] = [type]
      else
        new_hash[language][:style] << type
      end
    end
  end

  new_hash
end
