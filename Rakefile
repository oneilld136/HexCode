# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

desc "ev_console"
task :ev_console => :setup_env do
  IRB.start
end 

Rails.application.load_tasks
