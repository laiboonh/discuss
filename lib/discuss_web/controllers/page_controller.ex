defmodule DiscussWeb.PageController do
  use DiscussWeb, :controller

  def index(conn, _params) do
    conn
    |> redirect(to: Routes.topic_path(conn, :index))
  end
end
