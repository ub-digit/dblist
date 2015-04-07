class KeywordSource < ActiveRecord::Base
  has_many :keywords

  def self.find_by_name(request_name)
    return KeywordSource.find_by_code("ind2:0") if request_name == "en"
    return KeywordSource.find_by_code("ind2:4")
  end

  # Returns the language of the current KeywordSource
  # ie 'sv', 'en'
  def language
    return 'en' if code == "ind2:0"
      
    return 'se' if code == "ind2:4"

    return nil
  end
end
