namespace :db do
  desc 'Clear the database and fill with excellent fake data'
  task :populate => :environment do
    require 'populator'
    require 'faker'

    # Blow away the existing data
    tables = [PhysicalProject, Physical, Project, Condition, Brand, TapeFormat, ProcessStep, Owner]

    tables.each do |table|
      table.destroy_all
      # ActiveRecord::Base.connection.reset_pk_sequence!(table.table_name)
    end

    Condition.create([{condition: 'good', description: 'tape works'},
                      {condition: 'poor', description: 'tape does not work'},
                      {condition: 'questionable', description: 'quality unknown so far'}])

    Brand.create([{brand: 'Sony'}, {brand: 'Fuji'}, {brand: '3M'}, {brand: 'Scotch'}, {brand: 'U-Matic'}, {brand: 'Panasonic'}, {brand: 'Maxell'}])

    TapeFormat.create([{tape_format: 'VHS 120'}, {tape_format: 'VHS 30'}, {tape_format: 'Beta Cam 60'}, {tape_format: 'Beta Cam 20'}, {tape_format: 'Beta Max 30'}, {tape_format: '3/4" 60'}, {tape_format: '3/4" 30'}, {tape_format: '3/4" 20'}, {tape_format: '3/4" 10'}])

    ProcessStep.create([{process_step: 'Priority to Digitize', order: 1}, {process_step: 'Ready to be Digitized', order: 2}, {process_step: 'Digitized', order: 3}, {process_step: 'Broken/Needs Remediation', order: 4}, {process_step: 'Ready to be Destroyed', order: 5}])

    Owner.create(owner_name: 'NOVAC', contact_name: Faker::Name.name, contact_email: Faker::Internet.email, contact_phone: Faker::PhoneNumber.phone_number)

    Owner.create(owner_name: 'New Orleans Public Library', contact_name: Faker::Name.name, contact_email: Faker::Internet.email, contact_phone: Faker::PhoneNumber.phone_number)

    Owner.create(owner_name: 'Tulane University', contact_name: Faker::Name.name, contact_email: Faker::Internet.email, contact_phone: Faker::PhoneNumber.phone_number)


    Physical.populate(50) do |tape|
      tape.owner_id = Owner.pluck(:id).sample
      tape.brand_id = Brand.pluck(:id).sample
      tape.tape_format_id = TapeFormat.pluck(:id).sample
      tape.condition_id = Condition.pluck(:id).sample
      tape.tape = Faker::Address.building_number
      tape.title = Faker::Company.buzzword
    end

    Project.populate(30) do |project|
      project.owner_id = Owner.pluck(:id).sample
      project.title = Faker::Company.catch_phrase
      project.description = Faker::Lorem.paragraph
      project.production_notes = Faker::Lorem.sentences
      project.credits = Faker::Lorem.sentences(2)
      project.date_production = Faker::Date.backward(3000)

      PhysicalProject.populate(0..3) do |join|
        join.project_id = project.id
        join.physical_id = Physical.pluck(:id).sample
      end
    end

  end
end