class ChangeAdminPasswordToString < ActiveRecord::Migration[5.0]
  def change
    change_column :admins, :password, :string
  end
end
