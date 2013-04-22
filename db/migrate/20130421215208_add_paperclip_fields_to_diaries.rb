class AddPaperclipFieldsToDiaries < ActiveRecord::Migration
  def change
  	add_column :diaries, :image_file_name,    :string
    add_column :diaries, :image_content_type, :string
    add_column :diaries, :image_file_size,    :integer
    add_column :diaries, :image_updated_at,   :datetime
  end
end
