require('rspec')
require('anagram')

describe('#anagram') do
  it('checks if two words are anangrams') do
    is_anagram = Ragaman.new("frogs", "sgorf")
    expect(is_anagram.ragamanner()).to(include("sgorf is an anagram of frogs"))
  end
  it('checks if two words are antigrams') do
    is_anagram = Ragaman.new("bubble", "grunts")
    expect(is_anagram.ragamanner()).to(include("grunts is not an antigram of bubble"))
  end
  it('notify if two words are not anagrams or antigrams') do
    is_anagram = Ragaman.new("shoe", "fits")
    expect(is_anagram.ragamanner()).to(include("fits is not an antigram of shoe"))
  end
  it('handle upper lower case in word checks') do
    is_anagram = Ragaman.new("Tea", "Eat")
    expect(is_anagram.ragamanner()).to(include("eat is an anagram of tea"))
  end
  it('verify that original input string is a word') do
    is_anagram = Ragaman.new("ffgghh", "ffggbbhh")
    expect("Your original word input was not a word")
  end
  it('verify that original input string is a word') do
    is_anagram = Ragaman.new("^!554,", "fits")
    expect("Your original word input was not a word")
  end
  it('when phrases are input, check entire phrase against original input') do
    is_anagram = Ragaman.new("piesieat", "Tea sip ie")
    expect(is_anagram.ragamanner()).to(include("tea sip ie is an anagram of piesieat"))
  end
  it('when phrases and original word do not match, check each word in phrase against original input') do
    is_anagram = Ragaman.new("Tea sip ie", "alexander piesieat")
    expect(is_anagram.ragamanner()).to(include("piesieat is an anagram of tea sip ie"))
  end
  it('when phrases and original word do not match, check each word in phrase against original input') do
    is_anagram = Ragaman.new("violins", "the vio lin was invented by pupupup and tututut")
    expect(is_anagram.ragamanner()).to(include("tututut is an antigram of violins"))
  end
  it('researching multi-word input') do
    is_anagram = Ragaman.new("the eht hte", "mon nom onm")
    expect(is_anagram.ragamanner()).to(include("mon nom onm is not an anagram of the eht hte"))
  end
  it('researching multi-word input') do
    is_anagram = Ragaman.new("vacuumcleanerrepair", "vacuum cleaner repair")
    expect(is_anagram.ragamanner()).to(include("vacuum cleaner repair is an anagram of vacuumcleanerrepair"))
  end
  it('researching multi-word input') do
    is_anagram = Ragaman.new("bbbbbeg", "ksajhdp kjsadn yyyyyyo")
    expect(is_anagram.ragamanner()).to(include("ksajhdp kjsadn yyyyyyo is an antigram of bbbbbeg"))
  end
end
