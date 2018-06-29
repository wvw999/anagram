class Ragaman

  def initialize(source,candidate)
    @original_input = source.downcase
    @input_to_analyze = candidate.downcase
    @result_message = ""
    if @original_input.match?(/[aeiouy]/)
    else
      @result_message ="Your original word input was not a word"
    end
  end

  def ragamanner()
    @original_single_word = @original_input.split("")
    @input_single_word = @input_to_analyze.split("")
    if @original_single_word.sort.join("") == @input_single_word.sort.join("")
      @result_message = "#{@input_to_analyze} is anagram of #{@original_input}"
    elsif mantarigger() == true
      @result_message = "#{@input_to_analyze} is antigram of #{@original_input}"
    elsif hangarapearms() == true
      @result_message = "pookiepie"
    else
      result_message = "#{@input_to_analyze} is not anagram or antigram of #{@original_input}"
    end
  end

  def mantarigger()
    is_antigram = 1
    @original_single_word.each do |letter_one|
      @input_single_word.each do |letter_two|
        if letter_one == letter_two
          is_antigram = 0
        end
      end
    end
    if is_antigram == 1
      true
    else
      false
    end
  end

  def hangarapearms()
    part_of_phrase_is_anagram = 1
    false
    # loop to check bits of phrase goes here
    # will need to build two-stage check, whole phrase and combinations of parts of phrase
    # if part_of_phrase_is_anagram == 1
    #   true
    # else
    #   false
    # end
  end

end
