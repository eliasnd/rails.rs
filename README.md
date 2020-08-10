# Rochester Systems Web Server (rails.rs)

A Rails web server that supports interfacing with the Rust library Lori

## Dependencies:

This server is built on Rails, and needs both Ruby and Rails to run.

## Installation

To import the necessary gems, run `bundle install`.

## Usage

To start the server, call `rails server` in the rails.rs directory. From there, the server should start up, and, if running on a local machine, can be accessed at `localhost:3000`.

To edit user information or otherwise modify the database entries directly, call `rails db` and interact with the SQLite terminal. To avoid conflicts with Rails, don't use this to modify the schema or remove queries.

## Editing

To add functionality to the server, first update the front-end form and the call to Rust, then change the backend to accept any new inputs.

To edit the form itself, navigate to app/views/queries/new.html.erb and add any desired fields below the sample field. Define their symbols however you want. 

Next, navigate to app/controllers/queries\_controller.rb and edit the declaration of `@query` in the `create` method to accept new fields.

Lastly, edit the declaration of `@output` in the `show` method to accept any new instance variables of the query.

To add to the rust backend, open crates/lori/src/lib.rs. Currently the backend is set up to take in one file, formatted as a String, and one query field, and return a String. If updating the form, be sure to change the method signature to accept any new fields.

## Authors

Elias Neuman-Donihue