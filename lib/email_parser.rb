# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :address
  @@parse = []
  
  def initialize(addresses)
    @address = addresses
    addresses.collect do |address|
      @@parse << address.split(", ")
    end
  end
  
  def parse
    @@parse.flatten.uniq
  end
end