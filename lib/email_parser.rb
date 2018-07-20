# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_str, :emails

  def initialize(email_str)
    @email_str = email_str
    @emails = []
  end

  def parse
    @emails = @email_str.split /\s|, |,/
    @emails.uniq
  end

end
