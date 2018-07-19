# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

attr_accessor

  def initialize(string)
    @unparsed_string = string
  end

  def parse
    parsed = @unparsed_string.split /\s|,/
    parsed.select {|element| element !=""}.uniq
  end

end
