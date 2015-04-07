class Category < ActiveRecord::Base
  belongs_to :category_source
  has_many :categorizations
  has_many :dbs, :through => :categorizations
end
