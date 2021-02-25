defmodule Payments.Users.Create do
  alias Payments.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
