require './temp_converter'
require './except_check'

RSpec.describe Converter do
  describe '.temp' do
    context 'from_C_to_F' do
      it { expect(Converter.new('0', 'C').convert_c('K')).to eq 273.15 }
    end
    context 'from_C_to_K' do
      it { expect(Converter.new('55', 'C').convert_c('F')).to eq 131 }
    end
    context 'from_K_to_C' do
      it { expect(Converter.new('100', 'K').convert_k('C')).to eq(-173.15) }
    end
    context 'from_K_to_F' do
      it { expect(Converter.new('-100', 'K').convert_k('F')).to eq(-639.67) }
    end
    context 'from_F_to_C' do
      it { expect(Converter.new('155', 'F').convert_f('C')).to eq 68.33 }
    end
    context 'from_F_to_K' do
      it { expect(Converter.new('155', 'F').convert_f('K')).to eq 341.48 }
    end
  end
end

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
