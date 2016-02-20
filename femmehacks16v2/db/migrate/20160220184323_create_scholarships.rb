class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :name
      t.text :description
      t.string :organization
      t.integer :amount
      t.date :deadline
      t.text :eligibility
      t.string :link

      t.timestamps null: false
    end
  end
end
