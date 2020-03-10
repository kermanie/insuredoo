# insuredoo

# Goal
Needs to create a app that searches the insurance products and picks out the best one (lowest value). If two or more values comes out to be lowest then it picks the first 2 of which one is takaful and the other one is not.

# Tools and Technologies
Follwoing tools & frameworks are used
- sts
- maven
- sprint boot
- jpa
- junit
- jquery
- bootstrap
- postgressql
- h2
- log4j
- lombok
- heroku

# Db-Tables
The app has following tables
- takaful
- brand
- product
- product_brand (its a center table b/w product & brand)

# App flow

we are extracting the data from database based on filtered criteria and having order by ascending amount, once the data reaches app it creates a return collection by checking if the lowest value is already there then ignore the rest.

# How to Test

It has an index page, which if running locally can be accessed by
- http://localhost:5000

And also the App is deployed on heroku which can be accesed by
- https://polar-refuge-34790.herokuapp.com

Data is already adjusted in heroku server but for local testing it existing in schema.sql & data.sql

# Unit Test
Application has unit tests enabled for repository and testing done using h2 database.