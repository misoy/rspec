RSpec.describe 'nested hooks' do
  before(:context) do
    puts '1 => OUTER Before context'
  end

  before(:example) do
    puts '2 => OUTER Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts '3 => INNER Before context'
    end

    before(:example) do
      puts '4 => INNER Before example'
    end

    it 'does some more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does substraction as well' do
      expect(1 - 1).to eq(0)
    end
  end
end