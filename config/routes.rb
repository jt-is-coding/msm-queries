Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "director", :action => "index"})
  get("/directors/:the_id", { :controller => "director", :action => "show"})

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })

  get("/actors", { :controller => "actor", :action => "index"})
  get("/actors/:the_id", { :controller => "actor", :action => "show"})
end
