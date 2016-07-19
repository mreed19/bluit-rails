class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, limit: 20
      t.string :title, limit: 100
      t.string :description, limit: 500
      t.text :sidebar, limit: 5120
      t.text :submission_text, limit: 1024
    end
  end
end
