require './except_check'

RSpec.describe ExeceptChecker do
  describe '.except_check' do
    context 'check_number' do
      it { expect(ExeceptChecker.new('155', 'F').check_number?('155')).to eq true }
    end
    context 'check_scale' do
      it { expect(ExeceptChecker.new('155', 'F').check_scale?('F')).to eq true }
    end
    context 'check_scale' do
      it { expect(ExeceptChecker.new('155', 'd').check_scale?('d')).to eq false }
    end
  end
end
