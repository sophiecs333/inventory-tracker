class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :warehouse, null: false, foreign_key: true # moved manually from WH
      t.string :category

      t.timestamps
    end
  end
end
