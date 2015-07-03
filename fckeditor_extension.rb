# Uncomment this if you reference any of your controllers in activate
require_dependency 'application_controller'

class FckeditorExtension < Radiant::Extension
  version "0.5"
  description "Adds the FCKEditor editor - with file uploads and spell checking."
  url "http://github.com/djcp/radiant-fckeditor/tree/master"
  # ActionView::Base.send(:include, Fckeditor::Helper)

  def activate
    # admin.tabs.add "Fckeditor", "/admin/fckeditor", :after => "Layouts", :visibility => [:all]
    FckeditorFilter
    Admin::PagesController.send :include, FckeditorInterface
    admin.page.edit.add :part_controls, "editor_control"
  end

  def deactivate
    # admin.tabs.remove "Fckeditor"
  end

end
