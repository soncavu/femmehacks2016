class Category < ActiveRecord::Base
  has_many :scholarships
  has_many :categories, through: :categoriesScholarships
end
