class Ragaman

  def initialize(source, candidate)
    @original_input_pre_formatting = source.to_s.downcase
    if @original_input_pre_formatting.match(" ")
      @original_input = @original_input_pre_formatting.clone.gsub(/ /, '')
    else
      @original_input = @original_input_pre_formatting.clone
    end
    @input_to_analyze = candidate.to_s.downcase
    @result_message = ""
    if @original_input.match?(/[aeiouy]/)
    else
      @result_message += "Your original word, input was not a word"
    end
  end
  # anagrammer
  def ragamanner()
    @original_single_word = @original_input.gsub(/[^A-Za-z]/i, '').split("")
    @input_single_word = @input_to_analyze.split("")
    if @original_single_word.sort.join("") == @input_single_word.sort.join("")
      @result_message += " YES! #{@input_to_analyze} is an anagram of #{@original_input_pre_formatting}\n"
    end
    unless @original_input_pre_formatting.match?(/ /)
      if @original_single_word.sort.join("") != @input_single_word.sort.join("")
        @result_message += "   no... #{@input_to_analyze} is not an anagram of #{@original_input_pre_formatting}\n"
      end
    end
    mantarigger()
    if @input_to_analyze.match?(/ /)
      hangarapearms()
    end
    return @result_message
  end

  # antigrammer
  def mantarigger()
    @this_is_an_antigram = 1
    @original_single_word.each do |letter_one|
      @input_single_word.each do |letter_two|
        if letter_one == letter_two
          @this_is_an_antigram = 0
        end
      end
    end
    if @this_is_an_antigram == 1
      @result_message += " YES! #{@input_to_analyze} is an antigram of #{@original_input_pre_formatting}\n"
    else
      @result_message += "   no... #{@input_to_analyze} is not an antigram of #{@original_input_pre_formatting}\n"
    end
    return @result_message
  end

  # phrase anagrammer
  def hangarapearms()
    @this_is_an_anagram = 0
    @this_is_an_antigram = 1

    # loop to check bits of phrase goes here
    @input_multiple_word = @input_to_analyze.split(" ")
    length_of_array = @input_multiple_word.length
    @parent_combination_array = []
    # this loop builds a combination array of 1 .. x words to then check against original input
    (1..length_of_array).each do |combination_step|
      @all_combinations_of_words = @input_multiple_word.combination(combination_step).to_a
      @all_combinations_of_words.each do |push_to_parent|
        @parent_combination_array.push(push_to_parent)
      end
    end

    # search through @all_combinations_of_words for anagram
    @parent_combination_array.each do |child_compare_anagram|
      if child_compare_anagram.join("").split("").sort.join("") == @original_single_word.sort.join("")
        message = child_compare_anagram.join(" ")
        @this_is_an_anagram = 1
        @result_message += " YES! #{child_compare_anagram.join(" ")} is an anagram of #{@original_input_pre_formatting}\n"
      @result_message
      else
        @result_message += "   no... #{child_compare_anagram.join(" ")} is not an anagram of #{@original_input_pre_formatting}\n"
      end
      @result_message
    end

    # search through @all_combinations_of_words for antigram
    @parent_combination_array.each do |child_compare_antigram|
      child_compare_antigram.join("").split("").each do |antigram_check_level_one|
        @original_single_word.each do |antigram_check_level_two|
          if antigram_check_level_one == antigram_check_level_two
            @this_is_an_antigram = 0
          end
        end
      end
      if @this_is_an_antigram == 1
        @result_message += " YES! #{child_compare_antigram.join(" ")} is an antigram of #{@original_input_pre_formatting}\n"
      elsif @this_is_an_antigram == 0
        @this_is_an_antigram = 1
        @result_message += "   no... #{child_compare_antigram.join(" ")} is not an antigram of #{@original_input_pre_formatting}\n"
      end
      @result_message
    end
    @result_message
  end

end
