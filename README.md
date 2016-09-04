Rails 5 + Grape API Example
===========================

This is an example application using [Rails 5](http://rubyonrails.org/) + [Grape API](https://github.com/ruby-grape/grape)

# Getting Started

1. Clone the repo

   ```
   $ git clone https://github.com/gagoit/rails5-grape-api-example.git
   $ cd rails5-grape-api-example
   ```

2. Install dependencies

   ```
   $ bundle
   $ rails db:setup
   ```

3. Watch the specs pass

   ```
   $ rspec
   ... 0 failures
   ```

# Dependencies:
* Ruby version: 2.3.1
* Rails version: 5.0.0.1

# Features
## Utilize CORS (Cross-Origin Resource Sharing)
I use the [rack-cors gem!](https://github.com/cyu/rack-cors). This gem provides Rack CORS Middleware to our Rails app, allowing it to support cross-origin resource sharing.

## Serializing
[Grape::ActiveModelSerializers](https://github.com/ruby-grape/grape-active_model_serializers)

## Grape Swagger
The [grape-swagger gem](https://github.com/tim-vandecasteele/grape-swagger) autogenerates Swagger-compliant documentation for your Grape API.

* Visit http://petstore.swagger.io/ and open http://localhost:3000/swagger_doc to explore the API.
* Open http://localhost:300/docs to play around API documentation powered by [grape-swagger-rails gem](https://github.com/ruby-grape/grape-swagger-rails).

## Versioning
Api Version will be set in headers['Accept'] = "application/vnd.#{vendor}-v#{version}"

## Authorization
User Authorization token will be set in headers['Authorization']

# Response format:    
## Normal
  ```
  {
     data: {},
     meta: {
        code: 200,
        message: "success"
     }
  }
  ```

## Pagination:
  ```
  {
     data: {},
     meta: {
        code: 200,
        message: "success",
        current_page: 1,
        next_page: 2,
        prev_page: -1,
        total_pages: 2,
        total_count: 21
     }
  }
  ```
  
  + `prev_pave = -1` if current_page = 1
  + `next_pave = -1` if current_page = last_page

# Routes
* `rails routes` for normal Rails routes
* `rails grape:routes` for Grape generated routes

# Resources
* http://www.thegreatcodeadventure.com/making-a-rails-api-with-grap
* http://apionrails.icalialabs.com/book/chapter_one
* ...
