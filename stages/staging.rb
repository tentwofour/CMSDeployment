# Set the proper parameters file - to be placed in app/config/parameters
set :parameters_file, staging_config[:parameters_file]

# staging_server is set in your personalization.rb file
server staging_config[:server], :app, :web, :primary => true

set :user,          staging_config[:user]
set :deploy_to,     staging_config[:deploy_to]
set :domain,        staging_config[:domain]
set :deploy_via,    staging_config[:deploy_via]
set :branch,        staging_config[:deploy_branch]

role :web,        domain
role :app,        domain, :primary => true