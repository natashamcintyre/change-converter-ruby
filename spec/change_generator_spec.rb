require 'change_generator'

describe ChangeGenerator do
  describe '#convert' do
    it "returns ['£1'] for an input of 1" do
      expect(subject.convert(1)).to eq(["£1"])
    end

    it "returns ['£1', '£1'] for an input of 2" do
      expect(subject.convert(2)).to eq(["£1", "£1"])
    end

    it "returns ['£1', '£1', '£1'] for an input of 3" do
      expect(subject.convert(3)).to eq(["£1", "£1", "£1"])
    end

    it "returns ['£5'] for an input of 5" do
      expect(subject.convert(5)).to eq(["£5"])
    end

    it "returns ['£5', '£1'] for an input of 6" do
      expect(subject.convert(6)).to eq(["£5", "£1"])
    end

    it "returns ['£20', '£20'] for an input of 40" do
      expect(subject.convert(40)).to eq(["£20", "£20"])
    end

    it 'returns ["£50", "£20", "£10", "£5", "£1"] for an input of 86' do
      expect(subject.convert(86)).to eq(["£50", "£20", "£10", "£5", "£1"])
    end

    it 'returns ["£1", "50p"] for an input of 1.50' do
      expect(subject.convert(1.50)).to eq(["£1", "50p"])
    end

    it 'returns ["£1", "50p", "20p"] for an input of 1.70' do
      expect(subject.convert(1.70)).to eq(["£1", "50p", "20p"])
    end

    it 'returns ["£1", "50p", "20p", "10p"] for an input of 1.80' do
      expect(subject.convert(1.80)).to eq(["£1", "50p", "20p", "10p"])
    end

    it 'returns ["£1", "50p", "20p", "10p", "5p"] for an input of 1.85' do
      expect(subject.convert(1.85)).to eq(["£1", "50p", "20p", "10p", "5p"])
    end

    it 'returns error for input of NAN' do
      expect{ subject.convert('a') }.to raise_error("Incorrect input")
    end
  end
end
