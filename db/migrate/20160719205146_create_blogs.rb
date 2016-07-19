class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.integer :admin_id

      t.timestamps
    end
  end
end
