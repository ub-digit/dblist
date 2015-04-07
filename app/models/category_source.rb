class CategorySource < ActiveRecord::Base
  has_many :categories

  def self.find_by_name(request_name)
    return CategorySource.find_by_code("ind2:0") if request_name == "en"
    return CategorySource.find_by_code("ind2:4")
  end
end
