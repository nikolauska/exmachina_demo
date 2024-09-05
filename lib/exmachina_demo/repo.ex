defmodule ExmachinaDemo.Repo do
  use Ecto.Repo,
    otp_app: :exmachina_demo,
    adapter: Ecto.Adapters.SQLite3
end
