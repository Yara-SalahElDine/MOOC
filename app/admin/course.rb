ActiveAdmin.register Course do
    permit_params :user_id, :title

    index do
        selectable_column
        id_column
        column :title
        column :created_at
        actions
      end


      show do
        attributes_table do
          row :title
          row :created_at
        end
      end
end