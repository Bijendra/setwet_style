class HomesController < ApplicationController
  require 'fileutils'

  def index

  end
  
  def faqs
    @faqs = true
  end

  def shop
    @shop = true
  end

  def home    
  end

  def gels
    @gels = true
  end

  def deos
    @deos = true
  end

  def waxes
    @waxes = true
  end 	

  def styles
    @styling_video = true
  end

  def style_detail
    @waxes = true
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
        1 => ["/assets/std4.png", "/assets/stdwax4.png", "This forever-suave look suits oval and round faces that have short hair of thin or medium texture. Donne this style and you are sure to be a pop-icon!", "8vkk4znM4Kw", "/assets/texture-crop.png", "Texture Crop", "Finally, a hairstyle that will go with your moves."],
        2 => ["/assets/std3.png", "/assets/stdwax3.png", "This fun and trendy look suits round and oval faces with medium and long hair of thin or medium texture. It's always a blast when you emo it up!", "oCP2abhZ6hE", "/assets/emo.png", "Emo", "Your life is always a blast. Then what about your hair?"],
        3 => ["/assets/std2.png", "/assets/stdwax2.png", "The perfect look for round and oval faces with short hair of thin or medium texture. This styles gears you up for the wilderness!", "XCJ5ta6XPHM", "/assets/emo.png", "Cyclops", "Let your hair show your wild side."],
        4 => ["/assets/std1.png", "/assets/stdwax1.png", "The hot and happening office look for round, oval and square faces with short hair of medium or thick texture - flawless styling, always!", "tlJhZ4GQnEU", "/assets/shaperon.png", "Shaperon", "A flawless style for a flawless attitude."]
      }, 

      "wild" => {       
        1 => ["/assets/std4.png", "/assets/stdwax4.png", "This distinguishing style looks great on oval faces with hair of short or medium length. Suitable for all thickness and textures, this style sure expresses your individuality!", "bNUrOz3lM5U", "/assets/mohawk.png", "Mohawk", "You always stood out. Now so will your hair."],
        2 => ["/assets/std1.png", "/assets/stdwax1.png", "This seductively sexy style is great for round and oval faces that have medium length hair. Suitable for hair with thin, medium and thick textures, this style gets you adventure ready!", "q8HBIwdtUDM", "/assets/wolver.png", "Wolver", "Like your life, here's a style that's on the edge."],
        3 => ["/assets/std4.png", "/assets/stdwax4.png", "This intensely wild look suits round, oval, and square faces with hair of short or medium length. Suitable for all thickness and textures, all we can say is - Sexy Spikes! Sexy You!", "69ywei5DDQc", "/assets/spikes.png", "Spikes", "Stand-up hair for the Stand-up guy."],
        4 => ["/assets/std3.png", "/assets/stdwax3.png", "This devil-may-care look works for round and oval faces with long hair of medium texture. This style sure glams up your hair!", "OMIu7jQnq-Q", "/assets/glamzone.png", "Glamzone", "You're always on Page 3. Here's a hairstyle on the same page."]
      },

      "suave" => {       
        1 => ["/assets/std1.png", "/assets/stdwax1.png", "This classy look's great for round and oval faces with long hair of medium or thick texture. Lets you play it cool and classy!", "TRSJOV-mjw0", "/assets/long-crew.png", "Long Crew", "You always dressed the part. Now so will your hair."],
        2 => ["/assets/std2.png", "/assets/stdwax2.png", "This bewitching look suits oval faces with a medium length of hair with thin or medium texture. Get ready to spread the magic with this gripping hairstyle.", "5sq21ezyLbk", "/assets/midnight-cloud.png", "Midnight Cloud", "It's that touch of magic that keeps the night young."],
        3 => ["/assets/std3.png", "/assets/stdwax3.png", "The perfect look for an oval face with long hair of thin to medium texture. Donne this style and you ll be spotlight ready!", "KwVaauEK6Gg", "/assets/stone-wave.png", "Stone Wave", "You always aimed for the stars. So should your hair."],
        4 => ["/assets/std2.png", "/assets/stdwax2.png", "The uber-cool look works for oval or round faces with long hair of medium or thick texture. Wear and it youll definitely step up your style quotient.", "jRYY5btXxpQ", "/assets/graduate.png", "Graduate", "This style separates the men from the boys."]
      },

      "office" => {       
        1 => ["/assets/std3.png", "/assets/stdwax3.png", "The perfect office look for round and oval faces that have a medium length of hair with a thin or medium texture. With this style command the attention you deserve.", "LP2UjkqFVeQ", "/assets/shiny-disc.png", "Shiny Disc", "Let your hair be the center of attention too."],
      2 => ["/assets/std2.png", "/assets/stdwax2.png", "The classic look for oval faces with short or medium length hair of medium texture. Makes sure you are smooth and sexy, anytime!", "vsHwWnYwTLs", "/assets/smooth-rider.png", "Smooth Rider", "You are used to having it easy. So does this hairstyle."],
        3 => ["/assets/std1.png", "/assets/stdwax1.png", "The perfect look for round, square and oval faces that has long hair of thin, medium or thick texture. Gets you ready to roll like the king.", "PGnX5TX36Bs", "/assets/elvisy.png", "Elvisy", "Dazzle her with your moves and your hair."],
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
    @style_meter = true
  end	

  def sitemap
  end
  
  def contact_us
    @contact_us = ContactUs.new
  end

  def disclaimer
  end
  
  def thankyou
   
    # tmp = params[:contact_us][:attachment].tempfile if params[:contact_us][:attachment].present?
    
    # file = File.join("/home/bijendra/workspace/setwet_style/public", params[:contact_us][:attachment].original_filename)
    
    # FileUtils.cp tmp.path, file
    #  # parsing logic
    
    # FileUtils.rm file
  
    # #avoid uploading any other images..
    # new_contact = ContactUs.create()
    # UserMailer.voucher_email(new_contact).deliver
    redirect_to root_url
  end  

end
