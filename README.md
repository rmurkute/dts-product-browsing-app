# README

# DTS Product Browsing App

### Setup

Install RVM to manage ruby version:
```bash
\curl -sSL https://get.rvm.io | bash
rvm install 2.6.3
```

Install external dependencies:

#### For Linux (Ubuntu):
```bash
#curl https://cli-assets.heroku.com/install.sh | sh
sudo apt-get install postgresql postgresql-contrib
sudo apt-get update
sudo apt-get install yarn
```

### Running Data migrations
```bash
rails db:migrate
```