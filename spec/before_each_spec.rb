# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'before_each' do

  before do
    create(:carrier, name: 'DHL', code: 'dhl')
    create(:carrier, name: 'Fedex', code: 'fedex')
  end

  after do
    Carrier.delete_all
  end

  it 'checks dhl code' do
    dhl_carrier = Carrier.find_by(code: 'dhl')
    expect(dhl_carrier.code).to eq('dhl')
  end

  it 'checks fedex code' do
    fedex_carrier = Carrier.find_by(code: 'fedex')
    expect(fedex_carrier.code).to eq('fedex')
  end

  it 'checks updated name in fedex' do
    fedex_carrier = Carrier.find_by(code: 'fedex')
    fedex_carrier.name = 'Fedex Company'
    fedex_carrier.save
    expect(fedex_carrier.name).to eq('Fedex Company')
  end

  it 'does not share state across examples' do
    fedex_carrier = Carrier.find_by(code: 'fedex')
    expect(fedex_carrier.name).to eq('Fedex')
  end

  it 'evaluates true as true' do
    expect(true).to eq(true)
    # byebug
  end
end
