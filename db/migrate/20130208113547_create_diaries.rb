class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :Title
      t.string :Body

      t.timestamps
    end
  end
end
