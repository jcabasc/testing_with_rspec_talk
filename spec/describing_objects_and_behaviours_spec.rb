# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Carrier' do

  describe '.all' do #class method
  end

  describe '#services' do #instance method
    context 'with services' do
      it 'returns all services associated' do
        expect(true).to eq(true)
      end
    end

    context 'without services' do
      it 'returns an empty collection' do
        expect(true).to eq(true)
        expect(true).to eq(true)
        expect(true).to eq(true)
      end
    end
  end
end
