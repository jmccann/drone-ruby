# drone-ruby

[![Build Status](http://beta.drone.io/api/badges/drone/drone-ruby/status.svg)](http://beta.drone.io/drone/drone-ruby)
[![Coverage Status](https://aircover.co/badges/drone/drone-ruby/coverage.svg)](https://aircover.co/drone/drone-ruby)
[![Gem Version](http://img.shields.io/gem/v/droneio.svg)](https://rubygems.org/gems/droneio)

Ruby client for the Drone API

## Client

You can use this library as a client to communicate with any Drone instance
running on version `>= 0.4`. Below you can see some examples for the usage.

```ruby
TBD
```

If you want to know more details about the available methods, please take a
look at the [documentation]().

## Plugin

In order to write plugins for Drone based on Ruby you can use the Plugin class
to parse the defined payload that plugins need to accept. Below you can see an
example how you can use this functionality within your plugin.

```ruby
Drone::Plugin.new(STDIN).parse.tap do |payload|
  puts "Plugin execution for #{payload.repo.full_name}"
  puts "You are providing those arguments: #{payload.vargs}"
end
```

If you want to know more details about the available methods, please take a
look at the [documentation]().

## Contributing

Fork -> Patch -> Spec -> Push -> Pull Request

## Authors

* [Thomas Boerger](https://github.com/tboerger)
* [Other contributors](https://github.com/drone/drone-ruby/graphs/contributors)


## License

Apache-2.0


## Copyright

```
Copyright (c) 2016 Drone.io Developers
```
