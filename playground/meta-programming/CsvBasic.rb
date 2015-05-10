
class CSV
  def initialize
    @body = []
    read
  end

  def read
    file = File.new(self.class.to_s.downcase + '.csv')

    @header = file.gets.chomp.split(', ')

    file.each do |row|
      @body << row.chomp.split(', ')
    end
  end

  def header
    @header
  end

  def body
    @body
  end
end

class Quality < CSV
end

m = Quality.new
p m.header


