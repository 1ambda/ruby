module CSV
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      send :include, InstanceMethods
    end
  end

  module InstanceMethods
    attr_accessor :header, :body
    def initialize
      @body = []
      read
    end

    def read
      file_name = self.class.to_s.downcase + '.csv'
      file = File.new(file_name)

      @header = file.gets.chomp.split(', ')

      file.each do |row|
        @body << row.chomp.split(', ')
      end
    end

  end
end

class Quality
  include CSV # mixin
  acts_as_csv
end

data = Quality.new
p data.header
