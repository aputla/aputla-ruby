RailsRoot::Application.routes.draw do
  get /patients/:id, to: "patients#show"
end
