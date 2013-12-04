# Routify

A small module for dynamically generating routes in a Sinatra app.

---

### Module
`routing_helpers.rb`

    module RoutingHelpers
      def routify(*routes)
        routes.each do |route|
          get("/#{route}") do
            haml route
          end
        end
      end
    end

Optionally, you can create an instance variable to generate a page title. For example:

    ..
    get("/#{route}") do
      @page_title = route.capitalize

      haml route
    end
    ..

### Usage

Simply include the method in the main app file `app.rb`, and pass the method symbols for each route to generate.

    include RoutingHelpers

    routify :about, :contact, :faq
