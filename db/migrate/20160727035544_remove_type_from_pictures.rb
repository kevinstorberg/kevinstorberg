class RemoveTypeFromPictures < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :postable_type, :string
  end
end
