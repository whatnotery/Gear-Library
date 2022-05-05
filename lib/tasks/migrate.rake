task :migration do 
    rake db:migrate RAILS_ENV=production
end
