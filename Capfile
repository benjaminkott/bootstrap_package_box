set :deploy_config_path, File.expand_path('capistrano/deploy.rb')
set :stage_config_path, File.expand_path('capistrano/stages')

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/composer'

Dir.glob('capistrano/tasks/*.rake').each { |r| import r }
