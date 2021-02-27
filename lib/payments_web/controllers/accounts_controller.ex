defmodule PaymentsWeb.AccountsController do
  use PaymentsWeb, :controller

  alias Payments.Account

  action_fallback PaymentsWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Payments.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Payments.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
