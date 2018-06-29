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
    elsif @original_single_word.length == @input_single_word.length
      mantarigger()
    else
      result_message = "is not anagram"
    end
  end

  def mantarigger()
    result_message = ""
    not_antigram = 0
    # if 
    #   result_message = "is antigram"
    # else
    #   result_message = "is not anagram"
    # end
  end

end
