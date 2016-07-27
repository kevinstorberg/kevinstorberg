class AddIdToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :pictureable_id, :integer
  end
end
