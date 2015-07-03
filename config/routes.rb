ActionController::Routing::Routes.draw do |map|
  map.connect 'fckeditor/:action', :controller => '/fckeditor'
  map.connect 'fckeditor/check_spelling', :controller => '/fckeditor', :action => 'check_spelling'
  map.connect 'fckeditor/command', :controller => '/fckeditor', :action => 'command'
  map.connect 'fckeditor/upload', :controller => '/fckeditor', :action => 'upload'
end