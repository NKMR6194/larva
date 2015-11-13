require 'bundler'
Bundler.require
require 'redcarpet/render_strip'

ActiveRecord::Base.default_timezone = :local
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './page.db'
)

require_relative 'entry'
