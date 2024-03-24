# Anywhere Time
Discover [Anywhere Time](https://rubygems.org/gems/anywhere_time): Instantly access real-time information globally. Effortlessly retrieve current time for any location, enabling seamless global time management across diverse contexts and time zones.

[![Version][rubygems_badge]][rubygems]

## Features
- Instantly retrieve current time information for any location worldwide.
- Effortlessly manage time across diverse time zones with precision and ease.
- Customizable search functionality for filtering time zones based on specific criteria.

```ruby
  AnywhereTime.current_time 
  # => "10:25:07 AM"
```
```ruby
  AnywhereTime.timezones
#  => ["Africa/Abidjan",
#  "Africa/Algiers",
#  "Africa/Bissau",
#  "Africa/Cairo",
#  "Africa/Casablanca",
#  "Africa/Ceuta"...]
```
```ruby
 AnywhereTime.timezones(search: "America")
#  => ["America/Adak",
#  "America/Anchorage",
#  "America/Araguaina",
#  "America/Argentina/Buenos_Aires",
#  "America/Argentina/Catamarca",
#  "America/Argentina/Cordoba"...]
```

```ruby
AnywhereTime.get_area_time("Asia/Kolkata")
# => "10:33:18 AM"
```
```ruby
AnywhereTime.get_ip_address
# => "110.237.116.293"
```

[rubygems_badge]: https://img.shields.io/gem/v/anywhere_time.svg
[rubygems]: https://rubygems.org/gems/anywhere_time
