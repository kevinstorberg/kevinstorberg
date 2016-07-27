class AddPicturetypeToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :pictureable_type, :string
  end
end
