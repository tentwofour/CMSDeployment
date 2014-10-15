# Set the proper parameters file - to be placed in app/config/parameters
set :parameters_file, production_config[:parameters_file]

# production_server is set in your personalization.rb file
server production_config[:server], :app, :web, :primary => true

set :user,          production_config[:user]
set :deploy_to,     production_config[:deploy_to]
set :domain,        production_config[:domain]
set :deploy_via,    production_config[:deploy_via]
set :branch,        production_config[:deploy_branch]

role :web,        domain
role :app,        domain, :primary => true