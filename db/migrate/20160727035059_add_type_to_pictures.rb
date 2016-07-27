class AddTypeToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :postable_type, :string
  end
end
