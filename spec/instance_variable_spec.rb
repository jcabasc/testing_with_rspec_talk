# frozen_string_literal: true

require 'spec_helper'

RSpec.describe "instance_variables" do

  before do
    @dhl_carrier = create(:carrier, name: 'DHL', code: 'dhl')
    @fedex_carrier = create(:carrier, name: 'Fedex', code: 'fedex')
  end

  after do
    Carrier.delete_all
  end

  it 'checks dhl code' do
    expect(@dhl_carrier.code).to eq('dhl')
  end

  it 'checks fedex code' do
    expect(@fedex_carrier.code).to eq('fedex')
  end

  it 'checks not presence of ups' do
    expect(@ups_carrier).to eq(nil)
  end

  it 'checks updated name in fedex' do
    @fedex_carrier.name = 'Fedex Company'
    @fedex_carrier.save
    expect(@fedex_carrier.name).to eq('Fedex Company')
  end

  it 'checks fedex name' do
    expect(@fedex_carrier.name).to eq('Fedex')
  end

  it 'evaluates true as true' do
    expect(true).to eq(true)
    # byebug
  end
end
