require "paperclip"
require 'rmagick'

module Paperclip
    class Pdf2img < Processor
    
    
    def initialize file, options = {}, attachment = nil
      super
      @file           = file
      @params         = options[:params]
      @format         = options[:format]
      @current_format = File.extname(@file.path)
      @basename       = File.basename(@file.path, @current_format)
      end

    def make
      # Rails.logger.info("#{@file.path}")
      return_file = Tempfile.new([@basename, @format ? ".#{@format}" : ''])
      if @file.content_type == "application/pdf"
        images = Magick::ImageList.new(@file.path)
        appended_img = images.append(true)
        appended_img.write(return_file.path)
        # Rails.logger.info("RETURN FILE: #{return_file.path}")
      else
        img = Magick::Image.read(@file.path).first
        img.write(return_file.path)
      end
      return return_file
    end
    
  end
end