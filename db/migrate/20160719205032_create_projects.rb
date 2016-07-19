class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :admin_id

      t.timestamps
    end
  end
end
