require 'change_generator'

describe ChangeGenerator do
  describe '#convert' do
    it "returns ['£1'] for an input of 1" do
      expect(subject.convert(1)).to eq(["£1"])
    end
  end
end
