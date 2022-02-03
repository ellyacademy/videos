defmodule TodolistWeb.PageController do
  use TodolistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
