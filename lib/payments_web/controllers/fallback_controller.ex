defmodule PaymentsWeb.FallbackController do
  use PaymentsWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(PaymentsWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
