set :stage, :production

set :server, ENV['SERVER']
set :user, ENV['USER']
set :password, ENV['PASSWORD']

server fetch(:server),
    user: fetch(:user),
    roles: %w{web},
    ssh_options: {
        user, fetch(:user),
        forward_agent: false,
        auth_methods: %w(password),
        password, fetch(:password)
    }

set :deploy_to, ENV['DEPLOY_TO']
set :tmp_dir, ENV['TMP_DIR']
set :branch, 'master'

# Sets the path to php_cli
set :php_cli, '/usr/bin/php5.5-cli'

# Adjust ssh confi
SSHKit.config.command_map[:bash] = "/bin/bash"
SSHKit.config.command_map[:composer] = "COMPOSER_CACHE_DIR=\"#{shared_path}/composer\" #{fetch(:php_cli)} #{shared_path.join("composer.phar")}"

# adjust composer install
Rake::Task["composer:install_executable"].clear_actions
namespace :composer do
    task :install_executable do
        on release_roles(fetch(:composer_roles)) do
            within shared_path do
                unless test "[", "-e", "composer.phar", "]"
                    composer_version = fetch(:composer_version, nil)
                    composer_version_option = composer_version ? "-- --version=#{composer_version}" : ""
                    execute :curl, "-s", fetch(:composer_download_url), "|", '/usr/bin/php5.5-cli', composer_version_option
                end
            end
        end
    end
end

# base /usr/bin/ssh is not available; change the path in git-ssh.sh to /usr/local/bin/ssh
Rake::Task["deploy:check"].clear_actions
namespace :deploy do
    after :starting, 'composer:install_executable'
    task check: :'git:wrapper'  do
        on release_roles :all do
            execute :mkdir, "-p", "#{fetch(:tmp_dir)}/#{fetch(:application)}/"
            upload! StringIO.new("#!/bin/sh -e\nexec /usr/bin/ssh -o PasswordAuthentication=no -o StrictHostKeyChecking=no \"$@\"\n"), "#{fetch(:tmp_dir)}/#{fetch(:application)}/git-ssh.sh"
            execute :chmod, "+x", "#{fetch(:tmp_dir)}/#{fetch(:application)}/git-ssh.sh"
        end
    end
end
