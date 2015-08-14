require_relative '../lib/000_array.rb'

describe "Arrays" do
  languages = ["Ruby", "JavaScript", "HTML"]

  it 'adds an element to an array' do
    languages.push("CSS")
    expect(languages.count).to eq(4)
  end

  it 'prints out all the elements in the array' do
    expect(STDOUT).to receive(:puts).with(languages)
    puts(languages)
  end

end
