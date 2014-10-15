####
# Personalization file
###

# General configuration
set :config,    Array({
        # Application name
        :application => "",

        # The repository to deploy from - only GIT is supported at the moment
        :repository => "",

        # How many releases to keep?
        :keep_releases => "3",

        # Log level
        :log_level => "Logger::MAX_LEVEL"
})

# Production stage configuration
set :production_config,         Array({
        # Parameters file location (relative path) ie. app/config/parameters/parameters_{stage}.yml
        :parameters_file => ""

        # Server IP/FQDN
        :server => "",

        # User who has access to your git repo and deployment directory
        :user => "",

        # Path to deployment on server
        :deploy_to => "",

        # FQDN
        :domain => "",

        # Deployment method - :remote_cache, etc.
        :deploy_via => ""

        # Which branch of your repo will be deployed to this server
        :deploy_branch => ""
})

# Staging stage configuration
set :staging_config,         Array({
        # Parameters file location (relative path) ie. app/config/parameters/parameters_{stage}.yml
        :parameters_file => ""

        # Server IP/FQDN
        :server => "",

        # User who has access to your git repo and deployment directory
        :user => "",

        # Path to deployment on server
        :deploy_to => "",

        # FQDN
        :domain => "",

        # Deployment method - :remote_cache, etc.
        :deploy_via => ""

        # Which branch of your repo will be deployed to this server
        :deploy_branch => ""
})
