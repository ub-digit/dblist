class Url < ActiveRecord::Base
  belongs_to :db

  def as_json(options={})
    return {
      url: url,
      info: info,
      description: description
    }
  end
end
