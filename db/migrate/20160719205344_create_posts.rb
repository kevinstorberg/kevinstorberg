class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :admin_id
      t.string :postable_type
      t.integer :postable_id

      t.timestamps
    end
  end
end
