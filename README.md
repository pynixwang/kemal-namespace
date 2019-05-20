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



## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/kemal-namespace/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [community0](https://github.com/your-github-user) - creator and maintainer
