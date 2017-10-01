defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  alias Discuss.Topic

  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{}, %{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)
    case Repo.insert(changeset) do
      {:ok, post} -> render conn, "new.html", changeset: changeset
      {:error, changesets} -> render conn, "new.html", changeset: changesets
    end
    render conn, "new.html", changeset: changeset
  end

  def index(conn, params) do
    topics = Repo.all(Topic)
    render conn, "index.html", topics: topics
  end
end