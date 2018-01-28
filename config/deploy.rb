lock "~> 3.10.0"

set :repo_url,        'git@github.com:bpdarlyn/countinuous-integration.git'
set :application,     'inventory-ci'
set :user,            'deploy'
set :rvm_type, :system                     # Defaults to: :auto
set :rvm_ruby_version, '2.3.1@inventory-ci'
set :ssh_options, keys: ["config/id_rsa"] if File.exist?("config/id_rsa")
