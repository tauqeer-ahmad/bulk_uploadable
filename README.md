# BulkUploadable
Quick bulk insert to database. It comes handy when data needs to be populated from csv or excel files.

Tested on rails 3.2.13 and ruby 2.1.0


## Installation

Add this line to your application's Gemfile:

    gem 'bulk_uploadable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bulk_uploadable

## Usage

  Include following code to you gem file

    include BulkUploadable

    Model.bulk_upload([:column1, :column2], [["value1", "value2"], ["value1", value2]])

  e.g:

    class User < ActiveRecord::Base
      attr_accessible :email, :name
      include BulkUploadable
    end

    with out transaction 
    User.bulk_upload([:email, :name], [["petrik@gmail.com", "Petrik"], ["jhon@gmail.com", "Jhon"]])

    with transaction
    User.bulk_upload([:email, :name], [["petrik@gmail.com", "Petrik"], ["jhon@gmail.com", "Jhon"]], true)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bulk_uploadable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
