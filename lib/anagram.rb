class Ragaman

  def initialize(source,candidate)
    @original_input = source.downcase
    @input_to_analyze = candidate.downcase
  end

  def ragamanner()
    result_message = ""
    @original_single_word = @original_input.split("")
    @input_single_word = @input_to_analyze.split("")
    if @original_single_word.sort.join("") == @input_single_word.sort.join("")
      result_message = "is anagram"
    else
      result_message = "is not anagram"
    end
  end

end
