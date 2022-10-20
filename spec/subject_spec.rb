# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Carrier do
  describe 'implicit subject' do
    # subject { Carrier.new }

    it 'has a null name' do
      expect(subject.name).to be_nil
    end

    it 'does not have services' do
      expect(subject.services).to be_empty
    end
  end

  describe 'explicit subject' do
    subject { Carrier.new(name: 'Fedex', code: 'fedex') }

    it 'has a valid code' do
      expect(subject.code).to eq('fedex')
    end
  end

  describe 'explicit subject with name' do
    subject(:fedex) { Carrier.new(name: 'Fedex', code: 'fedex') }

    it 'has a valid code' do
      expect(fedex.code).to eq('fedex')
    end

    it 'does not have services' do
      expect(fedex.services).to be_empty
    end
  end

  describe 'one-liner syntax' do
    describe 'implicit subject' do
      it { should be_an_instance_of(Carrier) }
      it { is_expected.to be_an_instance_of(Carrier) }
    end

    describe 'explicit subject' do
      subject { Carrier.new(name: 'Fedex', code: 'fedex') }

      it { should be_a(Carrier) }
      it { is_expected.to be_a(Carrier) }
    end
  end
end
