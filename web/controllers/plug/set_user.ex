defmodule Discuss.Plug.SetUser do
  import Plug.Conn
  import Phoenix.Controller

  alias Discuss.Repo
  alias Discuss.User
  alias Discuss.Router.Helpers

  def init(_params) do

  end

  def call(conn, _params) do
    conn
  end
end