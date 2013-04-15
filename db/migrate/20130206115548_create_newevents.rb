class CreateNewevents < ActiveRecord::Migration
  def change
    create_table :newevents do |t|
    	t.string :title
    	t.text :body
      t.timestamps
    end
  end
end
