env= Rails.env
unless env.development? or env.test?
  Figaro.require_keys(
    "DB_DATABASE",
    "DB_PASSWORD",
    "DB_USERNAME",

    "MAILER_SMTP_ADDRESS",
    "MAILER_SMTP_DOMAIN",
    "MAILER_SMTP_PASSWORD",
    "MAILER_SMTP_PORT",
    "MAILER_SMTP_USER_NAME")
end