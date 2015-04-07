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
end
