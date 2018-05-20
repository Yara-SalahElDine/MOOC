class AddBooleanInstructorToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_instructor, :boolean 
  end
end
