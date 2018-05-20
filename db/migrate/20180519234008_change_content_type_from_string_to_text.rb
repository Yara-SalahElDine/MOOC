class ChangeContentTypeFromStringToText < ActiveRecord::Migration[5.1]
  def change
    change_column :lectures, :content, :text
  end
end
