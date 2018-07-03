require('rspec')
require('anagram')

describe('Anagram#anagrammer') do
  it('checks if two words are anangrams') do
    is_anagram = Anagram.new("frogs", "sgorf")
    expect(is_anagram.anagrammer()).to(eq([" YES! sgorf is an anagram of frogs\n"]))
  end
  it('checks if two words are antigrams') do
    is_anagram = Anagram.new("bubble", "grunts")
    expect(is_anagram.anagrammer()).to(eq(["   no... grunts is not an anagram of bubble\n"]))
  end
  it('notify if two words are not anagrams or antigrams') do
    is_anagram = Anagram.new("shoe", "fits")
    expect(is_anagram.anagrammer()).to(eq(["   no... fits is not an anagram of shoe\n"]))
  end
  it('handle upper lower case in word checks') do
    is_anagram = Anagram.new("Tea", "Eat")
    expect(is_anagram.anagrammer()).to(eq([" YES! eat is an anagram of tea\n"]))
  end
end
describe('Anagram#antigrammer') do
  it('check for antigram') do
    is_anagram = Anagram.new("violins", "tututut")
    expect(is_anagram.antigrammer()).to(eq([" YES! tututut is an antigram of violins\n"]))
  end
end
describe('Anagram#phrase_anagrammer') do
  it('when phrases are input, check entire phrase against original input') do
    is_anagram = Anagram.new("piesieat", "Tea sip ie")
    is_anagram.phrase_anagrammer()
    expect(is_anagram.return_results()).to(include("tea sip ie is an anagram of piesieat"))
  end
  it('when phrases and original word do not match, check each word in phrase against original input') do
    is_anagram = Anagram.new("Tea sip ie", "alexander piesieat")
    is_anagram.phrase_anagrammer()
    expect(is_anagram.return_results()).to(include("piesieat is an anagram of tea sip ie"))
  end
  it('when phrases and original word do not match, check each word in phrase against original input') do
    is_anagram = Anagram.new("violins", "the vio lin was invented by pupupup and tututut")
    is_anagram.phrase_anagrammer()
    expect(is_anagram.return_results()).to(include("tututut is an antigram of violins"))
  end
  it('researching multi-word input') do
    is_anagram = Anagram.new("the eht hte", "mon nom onm")
    is_anagram.phrase_anagrammer()
    expect(is_anagram.return_results()).to(include("mon nom onm is not an anagram of the eht hte"))
  end
  it('anagram multi-word check') do
    is_anagram = Anagram.new("vacuumcleanerrepair", "vacuum cleaner repair")
    is_anagram.phrase_anagrammer()
    expect(is_anagram.return_results()).to(include("vacuum cleaner repair is an anagram of vacuumcleanerrepair"))
  end
  it('antigram multi-word check') do
    is_anagram = Anagram.new("bbbbbeg", "ksajhdp kjsadn yyyyyyo")
    is_anagram.phrase_anagrammer()
    expect(is_anagram.return_results()).to(include("ksajhdp kjsadn yyyyyyo is an antigram of bbbbbeg"))
  end
end
describe('Anagram#validator') do
  it('input string 2 contains non=word') do
    is_anagram = Anagram.new("bog", "ksajhdp kjsadn ttttttt")
    expect(is_anagram.validator?()).to(eq(false))
  end
  it('input string 1 contains non-word') do
    is_anagram = Anagram.new("bog is ppppt", "ksajhdp kjsadn ttttttt")
    expect(is_anagram.validator?()).to(eq(false))
  end
  it('verify that original input string is a word') do
    is_anagram = Anagram.new("ffgghh", "ffggbbhh")
    expect(is_anagram.validator?()).to(eq(false))
  end
  it('verify that original input string is a word') do
    is_anagram = Anagram.new("^!554,", "fits")
    expect(is_anagram.validator?()).to(eq(false))
  end
end
describe('Anagram#check_all') do
  it('checks if two words are anangrams') do
    is_anagram = Anagram.new("frogs", "sgorf")
    expect(is_anagram.check_all()).to(include("sgorf is an anagram of frogs"))
  end
  it('checks if two words are antigrams') do
    is_anagram = Anagram.new("bubble", "grunts")
    expect(is_anagram.check_all()).to(include("grunts is not an antigram of bubble"))
  end
  it('notify if two words are not anagrams or antigrams') do
    is_anagram = Anagram.new("shoe", "fits")
    expect(is_anagram.check_all()).to(include("fits is not an antigram of shoe"))
  end
  it('handle upper lower case in word checks') do
    is_anagram = Anagram.new("Tea", "Eat")
    expect(is_anagram.check_all()).to(include("eat is an anagram of tea"))
  end
  it('verify that original input string is a word') do
    is_anagram = Anagram.new("ffgghh", "ffggbbhh")
    expect("All words in both of your input strings must consist of actual words")
  end
  it('verify that original input string is a word') do
    is_anagram = Anagram.new("^!554,", "fits")
    expect("All words in both of your input strings must consist of actual words")
  end
  it('when phrases are input, check entire phrase against original input') do
    is_anagram = Anagram.new("piesieat", "Tea sip ie")
    expect(is_anagram.check_all()).to(include("tea sip ie is an anagram of piesieat"))
  end
  it('when phrases and original word do not match, check each word in phrase against original input') do
    is_anagram = Anagram.new("Tea sip ie", "alexander piesieat")
    expect(is_anagram.check_all()).to(include("piesieat is an anagram of tea sip ie"))
  end
  it('when phrases and original word do not match, check each word in phrase against original input') do
    is_anagram = Anagram.new("violins", "the vio lin was invented by pupupup and tututut")
    expect(is_anagram.check_all()).to(include("tututut is an antigram of violins"))
  end
  it('researching multi-word input') do
    is_anagram = Anagram.new("the eht hte", "mon nom onm")
    expect(is_anagram.check_all()).to(include("mon nom onm is not an anagram of the eht hte"))
  end
  it('anagram multi-word check') do
    is_anagram = Anagram.new("vacuumcleanerrepair", "vacuum cleaner repair")
    expect(is_anagram.check_all()).to(include("vacuum cleaner repair is an anagram of vacuumcleanerrepair"))
  end
  it('antigram multi-word check') do
    is_anagram = Anagram.new("bbbbbeg", "ksajhdp kjsadn yyyyyyo")
    expect(is_anagram.check_all()).to(include("ksajhdp kjsadn yyyyyyo is an antigram of bbbbbeg"))
  end
  it('input string 2 contains non=word') do
    is_anagram = Anagram.new("bog", "ksajhdp kjsadn ttttttt")
    expect(is_anagram.check_all()).to(include("All words in both of your input strings must consist of actual words"))
  end
  it('input string 1 contains non-word') do
    is_anagram = Anagram.new("bog is ppppt", "ksajhdp kjsadn ttttttt")
    expect(is_anagram.check_all()).to(include("All words in both of your input strings must consist of actual words"))
  end
end
