require './temp_converter'

RSpec.describe Converter do
  describe '.temp' do
    context 'from_C_to_F' do
      it { expect(Converter.new('0', 'C').convert_f).to eq(-17.78) }
    end
    context 'from_C_to_K' do
      it { expect(Converter.new('55', 'C').convert_k).to eq(-218.15) }
    end
    context 'from_K_to_C' do
      it { expect(Converter.new('100', 'K').convert_c).to eq 373.15 }
    end
    context 'from_K_to_F' do
      it { expect(Converter.new('-100', 'K').convert_f).to eq 199.82 }
    end
    context 'from_F_to_C' do
      it { expect(Converter.new('155', 'F').convert_c).to eq 311.0 }
    end
    context 'from_F_to_K' do
      it { expect(Converter.new('155', 'F').convert_k).to eq(-180.67) }
    end
  end
end
