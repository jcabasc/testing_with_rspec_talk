namespace :db do
  desc 'Executes migration:up'
  task migrate: :environment do
    ActiveRecord::MigrationContext.new('db/migrate').migrate( ENV['VERSION'] ? ENV['VERSION'].to_i : nil )
  end

  desc 'Executes migration:down'
  task rollback: :environment do
    ActiveRecord::MigrationContext.new('db/migrate').rollback
  end
end

desc 'Load stuff in IRB.'
task console: :environment do
  puts 'Loading console...'
  require 'irb'

  ARGV.clear
  IRB.start
end

desc 'Sets the environment'
task :environment do
  load 'ar.rb'
end