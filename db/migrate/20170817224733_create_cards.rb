class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :suit
      t.int :rank

      t.timestamps
    end
  end
end
