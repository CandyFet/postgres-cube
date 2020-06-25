# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'activerecord-postgresql-cube'

ActiveRecord::Base.establish_connection(ENV['POSTGRES_URL'] || 'postgres://localhost')

ActiveRecord::Schema.define do
  self.verbose = false
  enable_extension 'cube'
  create_table :things, force: true do |t|
    t.cube :features
  end
end

class Thing < ActiveRecord::Base
  cube_attributes :features, :fluffiness, :crunchiness, :hotness, :dryness
end
