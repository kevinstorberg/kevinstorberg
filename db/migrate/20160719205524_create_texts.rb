class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.text :body

      t.timestamps
    end
  end
end
