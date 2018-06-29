require('rspec')
require('anagram')

describe('#anagram') do
  it('checks if two words are anangrams') do
    is_anagram = Ragaman.new("frogs", "sgorf")
    expect(is_anagram.ragamanner()).to(eq("sgorf is anagram of frogs"))
  end
  it('checks if two words are antigrams') do
    is_anagram = Ragaman.new("bubble", "grunts")
    expect(is_anagram.ragamanner()).to(eq("grunts is not anagram or antigram of bubble"))
  end
  it('notify if two words are not anagrams or antigrams') do
    is_anagram = Ragaman.new("shoe", "fits")
    expect(is_anagram.ragamanner()).to(eq("fits is not anagram or antigram of shoe"))
  end
  it('handle upper lower case in word checks') do
    is_anagram = Ragaman.new("Tea", "Eat")
    expect(is_anagram.ragamanner()).to(eq("eat is anagram of tea"))
  end
  it('verify that original input string is a word') do
    is_anagram = Ragaman.new("ffgghh", "ffggbbhh")
    expect(is_anagram.ragamanner()).to(eq("Your original word input was not a word"))
  end
  # it('verify that original input string is a word') do
  #   is_anagram = Ragaman.new("^!554,", "fits")
  #   expect(is_anagram.ragamanner()).to(eq("Your original word input was not a word"))
  # end
  # it('phrases are input, check entire phrase against original input') do
  #   is_anagram = Ragaman.new("piesieat", "Tea sip ie")
  #   expect(is_anagram.ragamanner()).to(eq("is anagram"))
  # end
  # it('when phrases and original word do not match, check each word in phrase against original input') do
  #   is_anagram = Ragaman.new("Tea sip ie", "alexander piesieat")
  #   expect(is_anagram.ragamanner()).to(eq("is anagram"))
  # end
  # it('phrases receive the same processing as a word for anagram, antigram, and letter case') do
  #   is_anagram = Ragaman.new("I eat pies", "Tea sip ie")
  #   expect(is_anagram.ragamanner()).to(eq("is anagram"))
  # end
end
