require 'feedback'
require 'date'

describe Feedback do
  let(:date) { "2020-02-27" }
  subject(:feedback) { Feedback.new(10, date) }

  describe '#happiness' do
    it 'returns the happiness score' do
      expect(feedback.happiness).to eq 10
    end
  end
end