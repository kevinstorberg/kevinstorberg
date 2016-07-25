class AddBodyToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :body, :text
  end
end
