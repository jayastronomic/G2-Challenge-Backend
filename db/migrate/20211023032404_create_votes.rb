class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.integer :visitor_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
