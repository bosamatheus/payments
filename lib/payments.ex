defmodule Payments do
  alias Payments.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
