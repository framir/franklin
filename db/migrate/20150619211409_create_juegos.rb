class CreateJuegos < ActiveRecord::Migration
  def change
    create_table :juegos do |t|
      t.string :nombre
      t.integer :rating

      t.timestamps
    end
  end
end
