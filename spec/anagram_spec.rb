require('rspec')
require('anagram')

describe('#anagram') do
  it('checks if two words are anangrams') do
    is_anagram = Ragaman.new("frogs", "sgorf")
    expect(is_anagram.ragamanner()).to(eq("is anagram"))
  end
end
