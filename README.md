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


### Problem Statement

Create a sample application for browsing through products.

Tech Stack: RoR, DB of your choice

In the application, you will need to have User and Product models.

▪ User can have general attributes like name, email, created_at, updated_at, etc.

▪ Product can be of type mobile with attributes like name, model, brand, year, RAM,
external storage, and more.
Populate Product model with around 5000 random entries (can use gems for this)

Create three pages:
▪ Login - Simple one but password must be encrypted. The page on successful login
should redirect to product list page.
▪ Product detail (show) - Can use Rails default template
▪ Product list (Show top 25 matches only) - Show list of products in a simple table
with basic css and the page should have filters on top, like brand, model, RAM,
external storage.

As a user should, one should be able to apply filters to look at list of products matching
their applied filters.

As a user, one should be able to export all matching products, unlike product list page only
top 25 matches are shown, in excel (not CSV) with similar table as product list page.
Exported file should contain ID of product and the ID cell should be a link to the product
detail page (e.g. /products/123).