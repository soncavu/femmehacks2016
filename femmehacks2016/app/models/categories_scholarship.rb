class CategoriesScholarship < ActiveRecord::Base
  validates_uniqueness_of :category_id, scope: :scholarship_id
  belongs_to :category
  belongs_to :scholarship
end
