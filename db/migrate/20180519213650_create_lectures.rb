class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :content
      t.string :attachement
      t.integer :course_id

      t.timestamps
    end
  end
end
