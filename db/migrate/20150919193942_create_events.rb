class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :image_url
      t.string :code

      t.timestamps null: false
    end
  end
end
