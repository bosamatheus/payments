defmodule PaymentsWeb.AccountsController do
  use PaymentsWeb, :controller

  alias Payments.Account
  alias Payments.Accounts.Transactions.Response, as: TransactionResponse

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

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Payments.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
