defmodule Ventus.Repo do
  use Ecto.Repo,
    otp_app: :ventus,
    adapter: Ecto.Adapters.Postgres
end
