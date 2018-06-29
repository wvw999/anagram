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
    elsif mantarigger()
      result_message = "is antigram"
    else
      result_message = "is not anagramz or antigram"
    end
  end

  def mantarigger()
    result_message = ""
    is_antigram = 0

    if is_antigram == 1
      true
    else
      false
    end
  end

end
