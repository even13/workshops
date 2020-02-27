require 'student'
require 'test'
require 'feedback'

describe Student do
  let(:date) { "2020-02-27" }
  let(:feedback_1) { double :feedback  }
  let(:feedback_2) { double :feedback }
  let(:answer_1) { double :answer }
  let(:answer_2) { double :answer }
  subject(:student) { Student.new }

  describe '#full_name' do
    it 'returns the student first name and last name' do
      student = Student.new(first_name: "Sian", last_name: "McAvoy")

      expect(student.full_name).to eq "Sian McAvoy"
    end

    it 'defaults to "Joe Bloggs"' do
      expect(student.full_name).to eq "Joe Bloggs"
    end
  end

  describe '#happiness' do
    it 'returns the average happiness reported' do
      # feedback_1 = Feedback.new(4, date)
      # feedback_2 = Feedback.new(4, date)
      allow(feedback_1).to receive(:happiness) {4}
      allow(feedback_2).to receive(:happiness) {4}
      student = Student.new(feedbacks: [feedback_1, feedback_2])

      expect(student.happiness).to eq 4
    end

    it 'defaults to zero' do
      expect(student.happiness).to eq 0
    end
  end

  describe '#test_scores' do
    it 'returns all test scores' do
      allow(answer_1).to receive(:correct?) { true }
      allow(answer_2).to receive(:correct?) { true }
      test_1 = Test.new(date, [answer_1])
      test_2 = Test.new(date, [answer_2])
      student = Student.new(tests: [test_1, test_2])

      expect(student.test_scores).to eq({ "#{ date.to_s }" => [1, 1] })
    end

    it 'defaults to being empty' do
      expect(student.test_scores).to be_empty
    end
  end

  describe '#attendance' do
    it 'describes the student attendance' do
    end
  end
end
