module Concerns::Findable

  def find_by_name(name)
    self.all.detect{|song|song.name == name}
  end

  def find_or_create_by_name(name)
    song = self.find_by_name(name)
    if song == nil
      self.create(name)
    else
      song
    end
  end
end
