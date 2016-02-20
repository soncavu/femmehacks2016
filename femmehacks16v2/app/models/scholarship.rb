class Scholarship < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :amount, :presence => true
  validates :deadline, :presence => true

  has_many :categories, through: :categoriesScholarships

end
