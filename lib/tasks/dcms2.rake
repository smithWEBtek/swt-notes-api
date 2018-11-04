namespace :db do
  desc 'drop, create, migrate, seed the db, restart rails'
	task dcms2: :environment do
    puts 'resetting db....'
    Rake::Task['db:reset'].invoke

    puts 'starting rails server ....'
    exec('rails s')  
  end
end
