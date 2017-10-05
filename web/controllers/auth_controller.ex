defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  plug Ueberauth

  alias Discuss.User

  def callback(%{assigns: %{ueberauth_auth: auth}}, params) do
    user_params = %{token: auth.credential.token, email: auth.info.email, provider: "github"}
    changeset = changeset(%User{},user_params)
  end

  defp inser_or_update_user(changeset) do
    case Repo.get_by(User, email: changeset.changes.email) do
      nil -> Repo.Insert(changeset)
      user -> {:ok, user}
    end
  end
end