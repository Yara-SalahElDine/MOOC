ActiveAdmin.register Lecture do
    permit_params :course_id, :user_id, :content, :attachment
    index do
      selectable_column
      id_column
      column 'Content', Lecture.ids.each do |f|
        raw f.content
      end
      column :attachement
      column :course
      column :created_at
      actions
    end
  
    show do
      attributes_table do
        row :content do
          raw Lecture.find(params[:id]).content
        end
        row :attachement
        row :course
        row :created_at
        panel 'Comments' do
          table_for lecture.comments do
            column :user
            column :text
          end
        end
      end
    end
  
    form do |f|
      f.inputs do
        f.input :course
        f.input :content
        f.input :attachement, :as => :ckeditor
      end
      f.actions
    end
  end