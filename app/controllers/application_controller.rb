class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :detect_browser

  MOBILE_BROWSERS = ["android", "ipod", "iphone", "opera mini", "blackberry", "palm", "hiptop", "avantgo", "plucker", "xiino", "blazer", "elaine", "w\
indows ce; ppc;", "windows ce; smartphone;", "windows ce; iemobile", "up.browser", "up.link", "mmp", "symbian", "smartphone", "midp", "wap", "vodafon\
e","o2", "pocket","kindle", "mobile", "pda", "psp", "treo"]

  def detect_browser    
    agent = request.headers["HTTP_USER_AGENT"]
    if(!agent.empty? && (MOBILE_BROWSERS.include? agent.downcase))
      redirect_to "http://m.setwetstyling.com"
    end
  end



end
