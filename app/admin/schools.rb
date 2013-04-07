ActiveAdmin.register School do
  index do
    selectable_column
    column :id
    column :name
    column "Votos Sí", :votes_yes do |school|
      school.tables.sum(:votes_yes)
    end
    column "Votos No", :votes_yes do |school|
      school.tables.sum(:votes_no)
    end
    column "Votos en Blanco", :votes_yes do |school|
      school.tables.sum(:votes_blank)
    end
    column "Votos Nulos", :votes_yes do |school|
      school.tables.sum(:votes_nil)
    end
    column :updated_at
    default_actions
  end
end
