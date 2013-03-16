class HomesController < ApplicationController
  require 'fileutils'
  def index
  end
  
  def faqs
  end

  def shop
  end

  def home
  end

  def gels
  end

  def deos
  end

  def waxes
  end 	

  def styles
  end

  def style_detail
      #    ["NAME", "bg image"]
    cat_data = {
      "casual" => ["CASUAL", "/assets/std6.png"],
      "wild" => ["WILD", "/assets/std6.png"],
      "suave" => ["SUAVE", "/assets/std6.png"],
      "office" => ["OFFICE", "/assets/std6.png"]
    }
    
 # ["bg image for desc","wax image", "desc", "youtube_video_id", "image for after video display", "short discription"]
    data = {
      "casual" => {       
        1 => ["/assets/std1.png", "/assets/stdwax1.png", "Description here for 1", "j4WUvPhjwQ8", "/assets/shaperon.png", "name1", "short desc 1"],
        2 => ["/assets/std2.png", "/assets/stdwax2.png", "Description here for 2", "mjKxu95hJCw", "/assets/glamzone.png", "name2", "short desc 2"],
        3 => ["/assets/std3.png", "/assets/stdwax3.png", "Description here for 3", "PqFMFVcCZgI", "/assets/emo.png", "name3", "short desc 3"],
        4 => ["/assets/std4.png", "/assets/stdwax4.png", "Description here for 4", "NrXdauEv9HY", "/assets/cyclops.png", "name4", "short desc 4"]
      }, 

      "wild" => {       
        1 => ["/assets/std1.png", "/assets/stdwax1.png", "Description here for 1", "j4WUvPhjwQ8", "/assets/shaperon.png", "name1", "short desc 1"],
        2 => ["/assets/std2.png", "/assets/stdwax2.png", "Description here for 2", "mjKxu95hJCw", "/assets/glamzone.png", "name2", "short desc 2"],
        3 => ["/assets/std3.png", "/assets/stdwax3.png", "Description here for 3", "PqFMFVcCZgI", "/assets/emo.png", "name3", "short desc 3"],
        4 => ["/assets/std4.png", "/assets/stdwax4.png", "Description here for 4", "NrXdauEv9HY", "/assets/cyclops.png", "name4", "short desc 4"]
      }

    }      

    cat = params[:name]
    if(cat_data[cat] == nil)
      redirect_to root_path
    else
      @meta = cat_data[cat]
      @data = data[cat]
    end
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
