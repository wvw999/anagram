require('rspec')
require('anagram')

describe('#anagram') do
  it('checks if two words are anangrams') do
    is_anagram = Ragaman.new("frogs", "sgorf")
    expect(is_anagram.ragamanner()).to(eq("is anagram"))
  end
  it('checks if two words are antigrams') do
    is_anagram = Ragaman.new("bubble", "grunts")
    expect(is_anagram.ragamanner()).to(eq("is antigram"))
  end
  it('notify if two words are not anagrams or antigrams') do
    is_anagram = Ragaman.new("shoe", "fits")
    expect(is_anagram.ragamanner()).to(eq("is not anagram or antigram"))
  end
end
