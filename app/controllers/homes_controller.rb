class HomesController < ApplicationController
  require 'fileutils'
  def index
  end
  
  def faqs
  end

  def shop
  end

  def waxes
  end

  def gels
  end

  def deos
  end

  def wax_range
  end 	

  def styles
  end

  def style_detail
  end

  def style_meter
  end	

  def sitemap
  end
  
  def contact_us
    @contact_us = ContactUs.new
  end

  def disclaimer
  end
  
  def thankyou
    p params[:contact_us][:attachment]
    p params
    p "S"*100
    tmp = params[:contact_us][:attachment].tempfile
    p tmp
    p "1"*100
    file = File.join("/home/bijendra/workspace/setwet_style/public", params[:contact_us][:attachment].original_filename)
    p file
    p "2"*100
    FileUtils.cp tmp.path, file
     # parsing logic
    
    FileUtils.rm file
  
    #avoid uploading any other images..
    new_contact = ContactUs.create()
  end  

end
