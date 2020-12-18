defmodule CoreApi.Repo do
  use Ecto.Repo,
    otp_app: :core_api,
    adapter: Ecto.Adapters.Mnesia
end
