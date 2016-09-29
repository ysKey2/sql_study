lock '3.5.0'

set :application, 'sql_study'
set :repo_url, 'git@github.com:test/sql_study.git'

set :deploy_to, '/var/www/rails4_template'

set :branch, ENV['BRANCH'] || 'master'
set :pty, false

set :linked_files, %w(.env config/database.yml)
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets)

set :rbenv_type, :system
set :rbenv_ruby, File.read('.ruby-version').strip

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'unicorn:restart'
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
    end
  end
end
