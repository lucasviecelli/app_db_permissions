defmodule AppDbPermissions.Repo do
  use Ecto.Repo,
    otp_app: :app_db_permissions,
    adapter: Ecto.Adapters.Postgres
end
