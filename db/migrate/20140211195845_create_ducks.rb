class CreateDucks < ActiveRecord::Migration
  def change
    create_table :ducks do |t|
      t.string :name
      t.string :color
      t.string :sound
      t.boolean :backback

      t.timestamps
    end
  end
end
