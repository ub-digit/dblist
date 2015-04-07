class Category < ActiveRecord::Base
  belongs_to :category_source
  has_many :categorizations
  has_many :dbs, :through => :categorizations

  def as_json(options={})
    return {
      id: id,
      category: category,
      hash_value: hash_value,
      lang: category_source.language
    }
  end

end
