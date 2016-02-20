class CreateCategoriesScholarships < ActiveRecord::Migration
  def change
    create_table :categories_scholarships do |t|

      t.timestamps null: false
    end
  end
end
