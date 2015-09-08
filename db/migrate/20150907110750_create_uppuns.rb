class CreateUppuns < ActiveRecord::Migration
  def change
    create_table :uppuns do |t|
      t.string :body
      t.string :yama

      t.timestamps null: false
    end
  end
end
