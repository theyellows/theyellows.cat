set :application, 'the_yellows'
set :repo_url, 'git@gitlab.coditdev.net:oidp/oidp_web.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git

set :scm_username, "codit"

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/application.yml config/puma.rb}

# Default value for linked_dirs is []
# do not symlink bin dir so that generated bins (delayed_job for example) are deployed from source code
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :use_sudo, false

# Before / After Hooks
after "deploy:restart", "deploy:cleanup" # clean old releases
