# LogExceptions
LogExceptions is a exception logger for Rails applications to track your application logs. It is the mountable engine. It mount your new or existing application.

[![log_exceptions](http://i.imgur.com/JoAxHW5.jpg)][log_exceptions]


[![Gem Version](https://badge.fury.io/rb/log_exceptions.png)][gem]
[![Build Status](https://secure.travis-ci.org/seyhunak/log_exceptions.png?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/seyhunak/log_exceptions.png?travis)][gemnasium]
[![Code Climate](https://codeclimate.com/github/seyhunak/log_exceptions.png)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/seyhunak/log_exceptions/badge.png?branch=master)][coveralls]

[log_exceptions]: https://rubygems.org/gems/log_exceptions
[gem]: https://rubygems.org/gems/log_exceptions
[travis]: http://travis-ci.org/seyhunak/log_exceptions
[gemnasium]: https://gemnasium.com/seyhunak/log_exceptions
[codeclimate]: https://codeclimate.com/github/seyhunak/log_exceptions
[coveralls]: https://coveralls.io/r/seyhunak/log_exceptions

## Installing

Add "log_exceptions" gem to your Gemfile and bundle

    gem "log_exceptions"
    bundle install

### Migration

Run the installer to generate migrations

    rake log_exceptions:install:migrations
    rake db:migrate

### Authentication

Create an initializer to "/config/initializer/log_exceptions.rb" then set your  authentication "username" and "password" to protect route

    LogExceptions::Engine.configure do |config|
      config.middleware.use Rack::Auth::Basic do |username, password|
        username == 'exceptions' && password == 'admin' # change this!
      end
    end

#### Usage:

In your "config/routes.rb" file add line below.

    mount LogExceptions::Engine => "/exceptions", :as => "exceptions"

Now you can access log_exceptions by adding "/exceptions" your url (i.e http://localhost:3000/exceptions)



## Changelog
   - Version 0.0.1 released


## About Me
Lead/ Senior Developer - Programmer @useful (Usefulideas) Istanbul / Turkey

### Contact me
Seyhun Akyürek - seyhunak [at] gmail com


## License
Copyright (c) 2013 Seyhun Akyürek

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.