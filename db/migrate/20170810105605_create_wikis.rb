class CreateWikis < ActiveRecord::Migration[5.1]
  def change
    create_table :wikis do |t|
      t.string :title
      t.text :body
      t.boolean :private, default: true
      t.text :description

      t.timestamps
    end
  end
end
