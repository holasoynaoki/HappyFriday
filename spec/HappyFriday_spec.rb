# frozen_string_literal: true

RSpec.describe HappyFriday do
  it 'has a version number' do
    expect(HappyFriday::VERSION).not_to be nil
  end

  context 'Judge HappyFriday' do
    it 'If the last Friday of the month is a weekday' do
      expect(Date.new(2022, 5, 27).happy_friday?).to eq(true)
    end

    it 'If the last Friday of the month is a holiday' do
      expect(Date.new(2022, 4, 29).happy_friday?).to eq(false)
    end
  end

  context 'Get HappyFriday' do
    it 'If the last Friday of the month is a weekday' do
      expect(Date.new(2022, 5, 1).get_next_happy_friday).to eq(Date.new(2022, 5, 27))
    end

    it 'If the last Friday of the month is a holiday' do
      expect(Date.new(2022, 4).get_next_happy_friday).to eq(Date.new(2022, 4, 28))
    end

    it 'If HappyFriday of that month has passed' do
      expect(Date.new(2022, 4, 30).get_next_happy_friday).to eq(Date.new(2022, 5, 27))
    end
  end
end
