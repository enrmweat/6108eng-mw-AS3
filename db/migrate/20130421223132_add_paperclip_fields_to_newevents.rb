class AddPaperclipFieldsToNewevents < ActiveRecord::Migration
  def change
  	add_column :newevents, :image_file_name,    :string
    add_column :newevents, :image_content_type, :string
    add_column :newevents, :image_file_size,    :integer
    add_column :newevents, :image_updated_at,   :datetime
  end
end
