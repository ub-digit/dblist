class Db < ActiveRecord::Base
  has_many :alternate_titles
  has_many :urls
  has_many :descriptions
  has_many :classifications
  has_many :keywords, :through => :classifications
  has_many :categorizations
  has_many :categories, :through => :categorizations
  has_many :publishers

  def self.search(query)

  end

  def as_json(options={})
    if options[:full]
      super()
      
    else
      return {
        title: title,
        alternate_titles: alternate_titles,
        descriptions: descriptions,
        categories: categorizations,
        keywords: classifications,
        publishers: publishers,
        urls: urls
      }
    end
  end
end
