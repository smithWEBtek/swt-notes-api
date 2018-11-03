namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app swt-notes-api --confirm swt-notes-api
      heroku run rake db:migrate --app swt-notes-api
      heroku run rake db:seed --app swt-notes-api')	
  end
end
