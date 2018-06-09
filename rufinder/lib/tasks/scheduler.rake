desc "This task is called by the Heroku scheduler add-on"
task :updateCardapio => :environment do
    sh "rails runner bin/rucard.rb"
end
