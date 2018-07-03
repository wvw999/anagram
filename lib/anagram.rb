class Anagram

  def initialize(word_one, word_two)
    @original_input_pre_formatting = word_one.to_s.downcase
    @original_input = @original_input_pre_formatting.clone.gsub(/ /, '')
    @input_to_analyze = word_two.to_s.downcase
    @output_array = []
    @original_single_word = @original_input.gsub(/[^A-Za-z]/i, '').split("")
    @input_single_word = @input_to_analyze.split("")
  end

  def validator?
    input_bool = 0
    candidate_bool = 0
    @original_input_pre_formatting.split(" ").each do |vowel_check|
      if vowel_check.match?(/[aeiouy]/)
      else
        input_bool = 1
      end
    end
    @input_to_analyze.split(" ").each do |vowel_check|
      if vowel_check.match?(/[aeiouy]/)
      else
        candidate_bool = 1
      end
    end
    if input_bool == 0 && candidate_bool == 0
      true
    else
      false
    end
  end

  def check_all
    if validator?
      anagrammer()
      antigrammer()
      phrase_anagrammer()
    else
      @output_array.push("All words in both of your input strings must consist of actual words")
    end
    return_results()
  end

  def return_results()
    final_result = @output_array.join(" ")
    final_result
  end

  def anagrammer()
    if @original_single_word.sort.join("") == @input_single_word.sort.join("")
      @output_array.push(" YES! #{@input_to_analyze} is an anagram of #{@original_input_pre_formatting}\n")
    end
    unless @original_input_pre_formatting.match?(/ /)
      if @original_single_word.sort.join("") != @input_single_word.sort.join("")
        @output_array.push("   no... #{@input_to_analyze} is not an anagram of #{@original_input_pre_formatting}\n")
      end
    end
    @output_array
  end

  def antigrammer()
    @this_is_an_antigram = 1
    if @input_to_analyze.split(" ").length == 1
      @original_single_word.each do |letter_one|
        @input_single_word.each do |letter_two|
          if letter_one == letter_two
            @this_is_an_antigram = 0
          end
        end
      end
      if @this_is_an_antigram == 1
        @output_array.push(" YES! #{@input_to_analyze} is an antigram of #{@original_input_pre_formatting}\n")
      else
        @output_array.push("   no... #{@input_to_analyze} is not an antigram of #{@original_input_pre_formatting}\n")
      end
      @output_array
    end
  end

  def phrase_anagrammer()
    @this_is_an_anagram = 0
    @this_is_an_antigram = 1
    if @input_to_analyze.match?(/ /)
      @input_multiple_word = @input_to_analyze.split(" ")
      length_of_array = @input_multiple_word.length
      @parent_combination_array = []

      (1..length_of_array).each do |combination_step|
        @all_combinations_of_words = @input_multiple_word.combination(combination_step).to_a
        @all_combinations_of_words.each do |push_to_parent|
          @parent_combination_array.push(push_to_parent)
        end
      end

      @parent_combination_array.each do |child_compare_anagram|
        if child_compare_anagram.join("").split("").sort.join("") == @original_single_word.sort.join("")
          message = child_compare_anagram.join(" ")
          @this_is_an_anagram = 1
          @output_array.push(" YES! #{child_compare_anagram.join(" ")} is an anagram of #{@original_input_pre_formatting}\n")
        @output_array
        else
          @output_array.push("   no... #{child_compare_anagram.join(" ")} is not an anagram of #{@original_input_pre_formatting}\n")
        end
      end

      @parent_combination_array.each do |child_compare_antigram|
        child_compare_antigram.join("").split("").each do |antigram_check_level_one|
          @original_single_word.each do |antigram_check_level_two|
            if antigram_check_level_one == antigram_check_level_two
              @this_is_an_antigram = 0
            end
          end
        end
        if @this_is_an_antigram == 1
          @output_array.push(" YES! #{child_compare_antigram.join(" ")} is an antigram of #{@original_input_pre_formatting}\n")
        elsif @this_is_an_antigram == 0
          @this_is_an_antigram = 1
          @output_array.push("   no... #{child_compare_antigram.join(" ")} is not an antigram of #{@original_input_pre_formatting}\n")
        end
      end
    end
    @output_array
  end

end
