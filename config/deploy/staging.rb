set :stage, :staging
set :rails_env, :staging
set :branch, ENV['BRANCH'] || 'develop'

role :app,   %w{ app@staging.example.com }
role :web,   %w{ app@staging.example.com }
role :db,    %w{ app@staging.example.com }
