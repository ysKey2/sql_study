set :stage, :production
set :rails_env, :production

role :app,   %w{ app@app1.example.com }
role :web,   %w{ app@app1.example.com }
role :db,    %w{ app@app1.example.com }
