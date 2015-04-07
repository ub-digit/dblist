class Classification < ActiveRecord::Base
  belongs_to :db
  belongs_to :keyword

  def as_json(options={})
    return {
      keyword_id: keyword_id,
      priority: priority
    }
  end
end
