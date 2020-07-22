defmodule LiveViewIntro.Repo do
  use Ecto.Repo,
    otp_app: :live_view_intro,
    adapter: Ecto.Adapters.Postgres
end
