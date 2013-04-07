ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc { I18n.t("active_admin.dashboard") }

  content :title => "Votos totales" do
    columns do
      column do
        panel "Info" do
          table do
            tr do
              td "Votos Sí"
              td "Votos No"
              td "Votos Blancos"
              td "Votos Nulos"
            end
            tr do
              td Table.sum(:votes_yes)
              td Table.sum(:votes_no)
              td Table.sum(:votes_blank)
              td Table.sum(:votes_nil)
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Info" do
          table_for Table.joins(:school).order("schools.name, tables.name") do |t|
            t.column("Escuela") { |row| row.school.name }
            t.column("Mesa") { |row| link_to(row.name, edit_admin_table_path(row.id)) }
            t.column("Votos Sí") { |row| row.votes_yes }
            t.column("Votos No") { |row| row.votes_no }
            t.column("Votos en Blanco") { |row| row.votes_blank }
            t.column("Votos Nulos") { |row| row.votes_nil }
          end
        end
      end
    end
  end
end
