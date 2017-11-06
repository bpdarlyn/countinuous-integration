lock "~> 3.10.0"

set :repo_url,        'git@bitbucket.org:brandondarlyn/inventory-ci.git'
set :application,     'inventory-ci'
set :user,            'deploy'
set :rvm_type, :system                     # Defaults to: :auto
set :rvm_ruby_version, '2.3.1@inventory-ci'
