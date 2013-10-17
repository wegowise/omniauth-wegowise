require 'spec_helper'

describe OmniAuth::Strategies::WegoWise do
  subject(:strategy) { OmniAuth::Strategies::WegoWise.new(nil, {}) }

  it "tells OmniAuth::Utils how to camelize 'wegowise'" do
    expect(OmniAuth::Utils.camelize('wegowise')).to eq('WegoWise')
  end

  it 'sets the name' do
    expect(strategy.options.name).to eq('wegowise')
  end

  describe 'client options' do
    let(:client_options) { strategy.options.client_options }

    it 'sets the correct site' do
      expect(client_options.site).to eq('https://www.wegowise.com')
    end
  end
end
