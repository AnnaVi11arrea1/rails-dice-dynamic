Rails.application.routes.draw do
  get("/", controller: "dice", action: "home")

  get("/dice/:number_of_dice/:how_many_sides", controller: "dice", action: "flexible") 

  get("/dice/2/6", controller: "dice", action: "twosix")

  get("/dice/2/10", controller: "dice", action: "twoten")

  get("/dice/1/20", controller: "dice", action: "onetwenty") 

  get("/dice/5/4", controller: "dice", action: "fivefour") 
end
