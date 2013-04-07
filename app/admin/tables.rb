ActiveAdmin.register Table do
  index do
    selectable_column
    column :id
    column :school
    column :name
    column :votes_yes
    column :votes_no
    column :votes_blank
    column :votes_nil
    column :updated_at
    default_actions
  end
end
