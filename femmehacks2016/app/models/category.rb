class Category < ActiveRecord::Base
  has_many :categoriesScholarship, dependent: :destroy
  has_many :scholarships, through: :categoriesScholarship
end
