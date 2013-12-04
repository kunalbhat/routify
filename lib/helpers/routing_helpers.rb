module RoutingHelpers
  def routify(*routes)
    routes.each do |route|
      get("/#{route}") do
        @page_title = route.capitalize

        haml route
      end
    end
  end
end
