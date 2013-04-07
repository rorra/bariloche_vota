namespace :bariloche_vota do
  desc "Import schools into the db"
  task import_schools: :environment do
    require 'csv'
    csv_file = File.expand_path("../../../db/data/escuelas.csv", __FILE__)
    imported = 0
    warnings = 0
    CSV.foreach(csv_file, headers: true) do |line|
      name = line[0].strip
      address = line[1].strip
      if School.where(name: name).exists?
        warnings += 1
        puts "School #{name} exists"
      else
        imported += 1
        School.create(name: name, address: address)
        puts "School #{name} imported"
      end
    end
    puts ""
    puts "Imported: #{imported}, Warnings: #{warnings}"
  end

  task import_tables: :environment do
    require 'csv'
    csv_file = File.expand_path("../../../db/data/escrutinio.csv", __FILE__)
    imported = 0
    warnings = 0
    errors = 0
    CSV.foreach(csv_file, headers: true) do |line|
      school_name = line[0].strip
      table_name = line[1].strip

      school = School.where(name: school_name).first
      if school
        if school.tables.where(name: table_name).exists?
          warnings += 1
          puts "Warning: #{table_name} exists"
        else
          imported += 1
          Table.create(school: school, name: table_name)
        end
      else
        errors += 1
        puts "Error: #{school} doesn't exists."
      end
    end
    puts ""
    puts "Imported: #{imported}, Warnings: #{warnings}, Errors: #{errors}"
  end
end