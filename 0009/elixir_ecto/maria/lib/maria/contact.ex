defmodule Maria.Contact do
  use Ecto.Schema

  schema "contacts" do
    field :name, :string
    field :phone, :string
  end

  def changeset(contact, params \\ %{}) do
    contact
    |> Ecto.Changeset.cast(params,[:name, :phone])
  end
end
