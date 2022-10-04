# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'factories' do

  context 'test build' do
    let(:service) { build(:service) }

    it 'service is not persisted' do
      expect(service.persisted?).to eq(false)
    end

    it 'carrier is not persisted' do
      expect(service.carrier.persisted?).to eq(false)
    end

    it 'allows the persistance of the record' do
      carrier = build(:carrier)
      expect(carrier.save).to eq(true)
    end
  end

  context 'test build stubbed' do
    let(:service) { build_stubbed(:service) }

    it 'service respond to persisted?' do
      expect(service.persisted?).to eq(true)
    end

    it 'carrier asociation respond to persisted?' do
      expect(service.carrier.persisted?).to eq(true)
    end

    it 'does not allow the persistance of the record' do
      msg = 'stubbed models are not allowed to access the database - Service#save()'
      expect { service.save }.to raise_error(RuntimeError, msg)
    end

    it 'does not allow the destruction of the record' do
      msg = 'stubbed models are not allowed to access the database - Service#destroy()'
      expect { service.destroy }.to raise_error(RuntimeError, msg)
    end

    it 'does not allow to update the record' do
      msg = 'stubbed models are not allowed to access the database - Service#update_attribute({:code=>"standard"})'
      expect { service.update_attribute(code: 'standard') }.to raise_error(RuntimeError, msg)
    end
  end

end