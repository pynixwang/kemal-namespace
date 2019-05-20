require "kemal"
require "../src/*"

namespace "/api" do
  namespace "/v1" do
    namespace "/users" do
      get "/:id" do |env|
        "Hello World!" + env.params.url["id"]
      end
    end
  end
end

Kemal.run
