# frozen_string_literal: true

require 'spec_helper'

RSpec.describe "let!" do
  let(:fedex_carrier) { create(:carrier, name: 'Fedex', code: 'fedex') }
  let!(:express_service) { create(:service, name: 'Express', code: 'express', carrier_id: fedex_carrier.id) }

  before do
    # byebug
  end

  after do
    Service.delete_all
    Carrier.delete_all
  end

  it 'checks express_service code' do
    expect(express_service.code).to eq('express')
    # byebug
  end

  it 'checks fedex code' do
    expect(fedex_carrier.code).to eq('fedex')
    # byebug
  end

  it 'evaluates true as true' do
    expect(true).to eq(true)
    # byebug
  end
end