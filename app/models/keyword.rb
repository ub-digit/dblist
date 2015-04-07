class Keyword < ActiveRecord::Base
  belongs_to :keyword_source
  has_many :classifications
  has_many :dbs, :through => :classifications
  belongs_to :parent, :foreign_key => :parent_id, :class_name => "Keyword"
  has_many :children, :foreign_key => :parent_id, :class_name => "Keyword"
  
  def as_json(options={})
    hash = {
      id: id,
      keyword: keyword,
      hash_value: hash_value,
      lang: keyword_source.language,
      parent: parent_id
    }
    return hash
  end

end
