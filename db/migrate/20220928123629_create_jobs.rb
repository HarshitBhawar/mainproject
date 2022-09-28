class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :experience
      t.integer :salary

      t.timestamps
    end
  end
end
