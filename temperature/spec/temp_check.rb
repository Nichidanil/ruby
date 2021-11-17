require './lib/except_check'

RSpec.describe ExeceptChecker do
  describe '.except' do
    context 'check_number' do
      it { expect(ExeceptChecker.new('155', 'F', 'F').check_number?('155')).to eq(true) }
    end
    context 'check_number' do
      it { expect(ExeceptChecker.new('155', 'F', 'F').check_number?('d')).to eq(false) }
    end
    context 'check_number' do
      it { expect(ExeceptChecker.new('155', 'F', 'F').check_number?('-')).to eq(false) }
    end
    context 'check_scale' do
      it { expect(ExeceptChecker.new('155', 'F', 'F').check_scale?('F')).to eq(true) }
    end
    context 'check_scale' do
      it { expect(ExeceptChecker.new('155', 'C', 'F').check_scale?('C')).to eq(true) }
    end
    context 'check_scale' do
      it { expect(ExeceptChecker.new('155', 'd', 'd').check_scale?('d')).to eq(false) }
    end
  end
end
