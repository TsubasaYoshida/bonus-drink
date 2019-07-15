require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify {expect(BonusDrink.total_count_for(0)).to eq 0}

  it '1本購入の場合、トータル1本飲める' do
    expect(BonusDrink.total_count_for(1)).to eq 1
  end

  it '3本購入の場合、トータル4本飲める' do
    expect(BonusDrink.total_count_for(3)).to eq 4
  end

  it '11本購入の場合、トータル16本飲める' do
    expect(BonusDrink.total_count_for(11)).to eq 16
  end

  it '100本購入の場合、トータル149本飲める' do
    expect(BonusDrink.total_count_for(100)).to eq 149
  end

end