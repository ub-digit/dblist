class Description < ActiveRecord::Base
  belongs_to :db

  def as_json(options={})
    return {
      description: description,
      url: url
    }
  end

end
