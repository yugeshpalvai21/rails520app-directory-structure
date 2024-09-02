# README

#### clone and cd into app the it sets ruby 2.6.10 on local if rbenv or rvm or asdf version manager existed else create one
  ``` rbenv install 2.6.10 && rbenv local 2.6.10```

#### install bundler (bundler installation optional) 
  ``` gem install bundler:2.4.22```
  ``` bin/bundle install ```
  > Optional: in case if `unable to install pg gem` error appears then run `sudo apt install libpq-dev` helps here.

#### create database and run migrations
 ``` bin/rails db:create && bin/rails db:schema:load && bin/rails db:migrate```

#### generate controller with action and without assets and helper (optional step)
  ``` bin/rails g controller <Controller_name> <action> --no-assets --no-helper```

#### run server locally
  ``` bin/rails s```


# Ruby on Rails 5.2 New Features

## 1. Active Storage
- **Introduction**: Active Storage is a built-in framework for managing file uploads in Rails applications.
- **Features**:
  - Direct uploads to cloud storage services like Amazon S3, Google Cloud Storage, and Microsoft Azure.
  - Supports image processing with built-in integration with libraries like MiniMagick and ImageProcessing.
  - Ability to attach one or many files to Active Record models.

## 2. Redis Cache Store
- **Introduction**: Rails 5.2 introduced Redis as a first-class cache store.
- **Features**:
  - Native support for Redis as a cache store, offering improved performance and scalability.
  - Supports Redis’s advanced features like distributed caching and cache expiration.

## 3. Credentials Management
- **Introduction**: Rails 5.2 introduced a new way to manage credentials securely.
- **Features**:
  - Allows storing encrypted credentials (like API keys and secret tokens) in `config/credentials.yml.enc`.
  - Provides a simple command-line interface (`rails credentials:edit`) to edit and manage encrypted credentials.

## 4. Content Security Policy (CSP)
- **Introduction**: Content Security Policy is a security feature that helps prevent cross-site scripting (XSS) attacks.
- **Features**:
  - Rails 5.2 adds a new `ActionDispatch::ContentSecurityPolicy` middleware to easily configure CSP headers.
  - Supports nonce-based CSP, which allows the use of inline scripts and styles while still enforcing security.

## 5. Improved Rails CLI
- **Introduction**: Rails 5.2 made several enhancements to the Rails Command Line Interface (CLI).
- **Features**:
  - Enhanced `rails secrets:setup` and `rails secrets:edit` commands for better management of secrets.
  - Improved error messages and debugging tools for CLI commands.

## 6. Cache Versioning
- **Introduction**: Cache versioning adds a new way to handle cache expiration more efficiently.
- **Features**:
  - Cache stores now support versions, making it easier to invalidate caches by simply changing the version.
  - Enhanced cache expiry management with minimal impact on application performance.

## 7. Disallowed Deprecation Warnings
- **Introduction**: To improve application stability, Rails 5.2 allows developers to disallow certain deprecation warnings.
- **Features**:
  - Provides the `config.active_support.disallowed_deprecation_warnings` configuration option.
  - Developers can list deprecations that should raise errors instead of just warnings.

## 8. Improvements to `ActiveRecord::Relation#or`
- **Introduction**: Rails 5.2 improved the `or` method for combining Active Record queries.
- **Features**:
  - Enhanced performance and flexibility when using `or` to combine multiple Active Record queries.
  - Supports more complex query combinations with minimal code.

## 9. Other Notable Changes
- **Action Cable**: Improved Action Cable performance and stability.
- **Encrypted Messages and Signed IDs**: Introduced encrypted and signed cookies for enhanced security.
- **Other Minor Improvements**: Various enhancements and bug fixes across the framework.
