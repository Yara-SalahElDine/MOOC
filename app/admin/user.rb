ActiveAdmin.register User do
    permit_params :email, :name, :gender, :date_of_birth, :avatar, :is_instructor, :password
  
    index do
      selectable_column
      column :id
      column :name
      column :email
      column :date_of_birth
      column :gender
      column :avatar do |img|
        image_tag img.avatar.url
      end
      column :is_instructor
      actions
    end
  
    filter :name
    filter :email
    filter :gender
    filter :date_of_birth
  
    show do
      attributes_table do
        row :name
        row :email
        row :gender
        row :created_at
        row :avatar
        row :is_instructor
        
      end
    end
  
    form title:'New User' do |f|
      f.inputs  do
      input :name
      input :email
      input :date_of_birth
      input :gender
      input :avatar
      input :password
      input :is_instructor
      f.actions
      end
    end
  
  end