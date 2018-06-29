class Ragaman

  def initialize(source,candidate)
    @original_input = source.downcase
    @input_to_analyze = candidate.downcase
    @result_message = ""
    if @original_input.match?(/[aeiouy]/)
    else
      @result_message += "Your original word input was not a word"
    end
  end
  # anagrammer
  def ragamanner()
    @original_single_word = @original_input.split("")
    @input_single_word = @input_to_analyze.split("")
    if @original_single_word.sort.join("") == @input_single_word.sort.join("")
      @result_message += "#{@input_to_analyze} is anagram of #{@original_input}"
    elsif mantarigger() == true
      @result_message += "#{@input_to_analyze} is antigram of #{@original_input}"
    elsif @input_to_analyze.match?(/ /)
      hangarapearms()
    else
      result_message = "#{@input_to_analyze} is not anagram or antigram of #{@original_input}"
    end
  end

  # antigrammer
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
  # phrase anagrammer
  def hangarapearms()
    part_of_phrase_is_anagram = 1
    part_of_phrase_is_antigram = 1

    # loop to check bits of phrase goes here
    @input_multiple_word = @input_to_analyze.split(" ")
    length_of_array = @input_multiple_word.length
    @parent_combination_array = []
    (1..length_of_array).times do |combination_step|
      @all_combinations_of_words = @input_multiple_word.combination(combination_step).to_a
      @all_combinations_of_words.each do |push_to_parent|
        @parent_combination_array.push(push_to_parent)
      end
    end

      # search through @all_combinations_of_words for anagram
    @parent_combination_array.each do |compare_anagram|
      if compare_anagram.join("").to_a.sort.join("") = @original_single_word.sort.join("")
        @result_message += "#{compare_anagram} is anagram of #{@original_input}\n"
        part_of_phrase_is_anagram = 0
      end
    end

    # search through @all_combinations_of_words for antigram
    @parent_combination_array.each do |compare_antigram|
      compare_antigram.join("").to_a.each do |antigram_check_level_one|
        @original_single_word.each do |antigram_check_level_two|
          if antigram_check_level_one == antigram_check_level_two
            part_of_phrase_is_antigram = 0
          end
        end
      end
      if part_of_phrase_is_antigram = 1
        @result_message += "#{compare_antigram} is antigram of #{@original_input}\n"
      end
    end

    # send back result if neither anagram nor antigram is found
    if part_of_phrase_is_anagram == 0 && part_of_phrase_is_antigram == 0
      @result_message += "#{compare_antigram} is not an anagram or antigram of #{@original_input}\nand no combinations of #{compare_antigram} was found to be an anagram or antigram, either"
    end
  end

end
