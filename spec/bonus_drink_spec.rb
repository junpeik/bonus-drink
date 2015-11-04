require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do

  context 'when 0 bin' do
    let(:bonus_drink) { BonusDrink.new(0) }
    specify { expect(bonus_drink.total_count_for(0)).to eq 0 }
  end
  context 'when 1 bin' do
    let(:bonus_drink) { BonusDrink.new(0) }
    specify { expect(bonus_drink.total_count_for(1)).to eq 1 }
  end
  context 'when 3 bins' do
    let(:bonus_drink) { BonusDrink.new(1) }
    specify { expect(bonus_drink.total_count_for(3)).to eq 4 }
  end
  context 'when 11 bins' do
    let(:bonus_drink) { BonusDrink.new(4) }
    specify { expect(bonus_drink.total_count_for(11)).to eq 16 }
  end
  context 'when bought 100 bins' do
    let(:bonus_drink) { BonusDrink.new(15) }
    specify { expect(bonus_drink.total_count_for(100)).to eq 138 }
  end
end