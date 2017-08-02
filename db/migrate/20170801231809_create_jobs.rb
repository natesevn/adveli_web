class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :role
      t.string :about_you
      t.string :requirements
      t.string :location

      t.timestamps
    end
  end
end
