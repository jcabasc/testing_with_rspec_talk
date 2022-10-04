namespace :db do
  task :migrate => :environment do
    ActiveRecord::MigrationContext.new('db/migrate' ).migrate( ENV['VERSION'] ? ENV['VERSION'].to_i : nil )
  end
end

desc "Load stuff in IRB."
task :console do
  load 'ar.rb'
  puts 'Loading environment...'
  require 'irb'

  ARGV.clear
  IRB.start
end
