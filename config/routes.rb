Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "index"})
  get("/directors/:the_id", { :controller => "director", :action => "show"})
end
