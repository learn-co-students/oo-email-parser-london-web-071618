# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser

  attr_accessor :emails

  @@all = []

  def initialize(emails)
    @emails = emails
  end

  def self.all
    @@all
  end

  def parse
    to_edit = self.emails
    to_array = to_edit.split(/[\s]|,\s/)
    to_array.each {|email| self.class.all << email }.uniq
  end

end
