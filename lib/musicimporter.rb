class MusicImporter

  extend Concerns::Findable
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    new_files = self.files
    new_files.each do |file|
      new_song = Song.create_from_filename(file)
    end 
  end

end
