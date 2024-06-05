# README

#### clone and cd into app the it sets ruby 2.6.10 on local if rbenv or rvm or asdf version manager existed else create one
  ``` rbenv install 2.6.10 && rbenv local 2.6.10```

#### install bundler (bundler installation optional) 
  ``` gem install bundler:2.4.22```
  ``` bin/bundle install ```
  > Optional: in case if `unable to install pg gem` error appears then run `sudo apt install libpq-dev` helps here.

#### create database and run migrations
 ``` bin/rails db:create && bin/rails db:schema:load && bin/rails db:migrate```

#### generate controller with action and without assets and helper (optional step)
  ``` bin/rails g controller <Controller_name> <action> --no-assets --no-helper```

#### run server locally
  ``` bin/rails s```