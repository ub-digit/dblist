class AlternateTitle < ActiveRecord::Base
  belongs_to :db

  def as_json(options={})
    return {
      title: title
    }
  end
end
