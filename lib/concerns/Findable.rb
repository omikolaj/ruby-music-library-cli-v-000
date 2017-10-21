module Concerns
  module Findable

    def find_by_name(name)
      #binding.pry
      all.detect{|song|song.name == name}
    end

    def find_or_create_by_name(name)
      if self.find_by_name(name) == nil
        create(name)
      else
        find_by_name(name)
      end
    end
  end
end