defmodule Maria.Repo.Migrations.CreateData do
  use Ecto.Migration

  def change do

    create table(:contacts) do
      add :name, :string
      add :phone, :string
    end
  end
end
