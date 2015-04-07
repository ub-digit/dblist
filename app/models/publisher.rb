class Publisher < ActiveRecord::Base
  belongs_to :db

  def as_json(options={})
    return {
      name: name
    }
  end
end
