# frozen_string_literal: true

require 'spec_helper'


RSpec.configure do |config|
  config.before(:suite) { puts 'BEFORE :suite' }
  config.after(:suite) { puts 'AFTER :suite' }
end

RSpec.describe 'order of hook execution' do
  around(:all) do |each|
    puts '  AROUND BEFORE :all'
    each.run
    puts '  AROUND AFTER :all'
  end

  around(:each) do |each|
    puts '   AROUND BEFORE :each'
    each.run
    puts '   AROUND AFTER :each'
  end

  before(:all) { puts ' BEFORE :all' }
  before(:each) { puts '    BEFORE :each' }
  after(:each) { puts '     AFTER :each' }
  after(:all) { puts 'AFTER :all' }

  it { expect(true).to be(true) }
end