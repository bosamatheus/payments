defmodule PaymentsWeb.UsersController do
  use PaymentsWeb, :controller

  alias Payments.User

  action_fallback PaymentsWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Payments.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
