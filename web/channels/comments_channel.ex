defmodule Discuss.CommentsChannel do

  use Discuss.Web, :channel

  def join(name, params, socket) do
    {:ok, %{hey: "there", params: params, name: name}, socket}
  end

  def handle_in(name, message, socket) do
    IO.puts(name)
    IO.inspect(message)
    {:reply, :ok, socket}
  end
end