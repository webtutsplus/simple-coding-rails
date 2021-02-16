yarn install --ignore-engines

install rails server

rails s

sudo chmod 777 tmp

##ruby version control using RVM

https://medium.com/@zacharybadiru/ruby-version-manager-version-install-and-version-switching-1a12e685a0b1

curl -sSL https://get.rvm.io | bash

run elasticsearch

cd Downloads/elasticsearch-7/ ./bin/elasticsearch

sudo chmod -R 777 tmp/ sudo chmod -R 777 log/

sudo bundle exec rails s

yarn install --ignore-engines

for error error dev.to@1.0.0: The engine "node" is incompatible with this
module. Expected version "14.14.x". Got "14.15.0"

rvm use 2.7.2

######## rvm use 2.7.2

bundle install

bin/setup

bin/

####################

sudo apt-install ruby sudo apt-install ruby

###install rvm gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys
409B6B1796C275462A1703113804BB82D39DC0E3
7D2BAF1CF37B13E2069D6956105BD0E739499BDB

sudo apt-get install software-properties-common sudo apt-add-repository -y
ppa:rael-gc/rvm sudo apt-get update sudo apt-get install rvm

sudo usermod -a -G rvm contact_webtutsplus

#reboot

gem install patron -v '0.13.3 bundle install

sudo apt install ruby-bundler

#ImageMagick git clone https://github.com/ImageMagick/ImageMagick.git
ImageMagick-7.0.10 cd ImageMagick-7.0.10 ./configure make

OR

sudo apt install imagemagick

#postgres

sudo -u postgres psql CREATE ROLE contact_webtutsplus; GRANT ALL PRIVILEGES ON
DATABASE practicaldeveloper_development TO contact_webtutsplus;

#redis sudo apt install redis-server sudo nano /etc/redis/redis.conf #change:
supervised systemd

sudo systemctl restart redis.service

#elastic search

wget
https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.5.2-linux-x86_64.tar.gz
wget
https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.5.2-linux-x86_64.tar.gz.sha512
shasum -a 512 -c elasticsearch-7.5.2-linux-x86_64.tar.gz.sha512 tar -xzf
elasticsearch-7.5.2-linux-x86_64.tar.gz cd elasticsearch-7.5.2/

#napm and yarn sudo apt install npm sudo npm install --global yarn

#missing dependecines #partorn sudo apt-get install libcurl3-dev

#upgrade node,js curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs sudo yarn install

######## PSQL permission error createuser --superuser <user_name> ALTER ROLE
<user_name> SUPERUSER;

#allow 3000

gcloud compute firewall-rules create default-allow-http-3000 \
 --allow tcp:3000 \
 --source-ranges 0.0.0.0/0 \
 --target-tags http-server \
 --description "Allow port 3000 access to http-server"

######################

for the error HTTP Origin header (http://35.232.166.121:3000) didn't match
request.base_url (http://35.232.166.121:3000)

search the file where it exits and comment it out

https://stackoverflow.com/questions/33318107/how-do-i-start-foreman-server-on-background-on-production

ssh into the remote machine start tmux by typing tmux into the shell start the
process you want inside the started tmux session leave/detach the tmux session
by typing Ctrl+B and then D

tmux ls tmux attach tmux ctrl B + x to kill

## Give Admin Privilege to the user

- `bundle exec rails c`
- `user1 = User.first`
- `user1.add_role(:super_admin)`
- `exit`

## Deploying on server

It is recommended to use the contact.webtutsplus@gmail.com account while
deploying on the server

- If you are deploying the website for the first time on a server, make sure
  that the Environment option in .env file is set to production

* `tmux attach -t forem`
* Press Ctrl+C to stop the server
* `git remote update`
* `git pull`
* `bin/startup`
* Press Ctrl+B and then D to detach from Tmux

## SSL

- in `Procfile.dev`, the following code was used to start the server without ssl
  `web: bin/rails s -p 3000 -b 0.0.0.0`
- in `config/puma.rb`, the lines 18-25(inclusive) were added
