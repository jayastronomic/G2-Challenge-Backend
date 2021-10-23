class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :bio
      t.string :image_url

      t.timestamps
    end
  end
end
