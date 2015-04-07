class Categorization < ActiveRecord::Base
  belongs_to :db
  belongs_to :category

  def as_json(options={})
    return {
      category_id: category_id
    }
  end
end
