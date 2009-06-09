# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class FacebookConnectExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/facebook_connect"

  # Please use facebook_connect/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    # admin.tabs.add "Facebook Connect", "/admin/facebook_connect", :after => "Layouts", :visibility => [:all]
    ApplicationController.class_eval do 
      before_filter :set_facebook_session
    end
  end
end
