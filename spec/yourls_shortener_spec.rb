require 'spec_helper'

describe 'Yourls' do
  let(:short_url) { 'http://examp.le/123a' }
  let(:long_url)  { 'http://giantbatfarts.com' }

  describe '.expand' do
    subject { Yourls::Expand.url(short_url) }

    it 'returns the long url' do
      expect(subject).to eq(long_url)
    end
  end

  describe '.shorten' do
    subject { Yourls::Shorten.url(long_url) }

    it 'returns the long url' do
      expect(subject).to eq(short_url)
    end
  end

  describe '.count' do
    subject { Yourls::Clicks.url(short_url) }

    it 'returns a count' do
      expect(subject).to be_a(Fixnum)
    end
  end
end

