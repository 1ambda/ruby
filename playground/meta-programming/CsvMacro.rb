class CSV
  def self.csv

    define_method 'read' do
      file = File.new(self.class.to_s.downcase + '.csv')
      @header = file.gets.chomp.split(', ')
      file.each do |row|
        @body << row.chomp.split(', ')
      end
    end

    define_method 'header' do
      @header
    end

    define_method 'body' do
      @body
    end

    define_method 'initialize' do
      @body = []
      read
    end

  end
end

class Quality < CSV
  csv
end

m = Quality.new
p m.header

