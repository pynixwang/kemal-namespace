# kemal-namespace

Modular your Kemal App

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     kemal-namespace:
       github: pynixwang/kemal-namespace
   ```

2. Run `shards install`

## Usage

```crystal
require "kemal"
require "kemal-namespace"

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

```
