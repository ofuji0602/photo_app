Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot.
  config.eager_load = true

  # Show full error reports.
  config.consider_all_requests_local = false

  # Enable caching.
  config.action_controller.perform_caching = true
  config.cache_store = :memory_store
  config.public_file_server.headers = { 'Cache-Control' => 'public, max-age=31536000' }

  # Serve static files from the `/public` folder.
  config.public_file_server.enabled = true

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Generate digests for assets URLs.
  config.assets.digest = true

  # `config.assets.version` is used to invalidate cache when assets change.
  config.assets.version = '1.0'

  # Add additional assets to the asset load path.
  # config.assets.paths << Rails.root.join("app", "assets", "builds")

  # Precompile additional assets.
  # application.js, application.css, and all non-JS/CSS in the app/assets
  # folder are already added.
  # config.assets.precompile += %w( admin.js admin.css )

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Use default URL options for the mailer.
  config.action_mailer.default_url_options = { host: 'example.com' }

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to the default locale).
  config.i18n.fallbacks = [I18n.default_locale]

  # Notify on missing translations.
  config.i18n.raise_on_missing_translations = true

  # Annotate rendered views with file names.
  config.action_view.annotate_rendered_view_with_filenames = true

  # Use the lowest log level to ensure availability of diagnostic information when problems arise.
  config.log_level = :debug

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new)

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Add any custom configuration here
  # Active Storage のストレージサービス設定
  config.active_storage.service = :local
end
