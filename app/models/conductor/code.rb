module Conductor
  class Code
    def initialize(path)
      @path = path
    end

    def path_name
      Pathname.new(@path).basename
    end

    def content
      begin
        @content ||= File.open(File.join("/",@path)).read
      rescue
        @content = 'File not found.'
      end
    end

    def content=(new_content)
      @content = new_content unless new_content.blank?
    end

    def path
      @path
    end

    def save
      !!File.open(File.join('/',@path), 'w') { |file| file.write(@content) }
    end


    def self.find_by_path(_path=Rails.root)
      path = Pathname.new(_path)
      directories = Dir.exist?(path) ? Dir.entries(File.join("/",path)).sort{|a,b| a.downcase <=> b.downcase } : []
      return sort_directory(directories, path)
    end

    private

    def self.sort_directory(dir_list, path)
      dirs, files =  [], []
      dir_list.select{|dir| dir != "." && dir != ".."}.each do |dir|
        dir_path = File.join("/",path,dir)
        File.directory?(dir_path) ? dirs << dir_path : files << dir_path
      end
      [dirs, files].flatten
    end
  end
end
