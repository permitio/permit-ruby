# Permit.io Ruby SDK

Instructions for installing Ruby SDK for interacting with Permit.io.

## Overview

This guide will walk you through the steps of installing the Permit.io Ruby SDK and integrating it into your code.

## Installation

Install the SDK using the following command:

```shell
gem install permit-sdk
```

Put the package under your project folder and add the following in import:

```ruby
require "permit-sdk"
```

## Usage

### Init the SDK

To init the SDK, you need to create a new Permit client with the API key you got from the Permit.io dashboard.

First we will create a new Config object so we can pass it to the Permit client.

Second, we will create a new Permit client with the Config object we created.

```ruby
require "permit-sdk"
permit = Permit.new('token')
```

### Check for permissions

To check permissions using our `Permit.check()` method.
Follow the example below:

```ruby
require 'permit-sdk'

permit = Permit.new("TOKEN")
user = { id: "user@mail.io", first_name: "User", last_name: "Doe", email: "user@mail.io" }
permitted = permit.check(user.id, "create", "Blog_Post")
if permitted
  # permit user to create blog post
else
  # deny user to create blog post
end
```

### Sync users

To sync users to the Permit.io API, using the `Permit.sync_user()` method.
Follow the example below:

```ruby
require 'permit-sdk'

permit = Permit.new("TOKEN")
user = permit.sync_user({ key: "new_user_key", email: "user@mail.com", first_name: "User", last_name: "Doe" })
```
