# set the database based on the current environment
database_name = "task_manager_#{TaskManager.environment}"      # = "task_manager_test b/c ENV["RACK_ENV"] ||= "test"
                                                               # = "task_manager_development b/c ENV["RACK_ENV"] ||= "development"
                                                               # = "task_manager_production b/c ENV["RACK_ENV"] ||= "production"
# connect ActiveRecord with the current database
ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "db/#{database_name}",
)
