Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})

  get("/users", {:controller => "users", :action => "index"})

  get("/users/:path_username", {:controller => "users", :action => "show"})

  post("/update_user/:modify_username", {:controller => "users", :action => "update"})

  get("/insert_user", {:controller => "users", :action => "create"})

  get("/photos", {:controller => "photos", :action => "index"})

  get("/photos/:path_id", {:controller => "photos", :action => "show"})
  
  get("/delete_photo/:toast_id", {:controller => "photos", :action => "baii"})

  get("/insert_photo", {:controller => "photos", :action => "create"})

  post("/update_photo/:modify_id", {:controller => "photos", :action => "update"})

end
