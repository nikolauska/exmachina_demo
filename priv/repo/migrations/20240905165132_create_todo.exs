defmodule ExmachinaDemo.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todo) do
      add :title, :string, null: false
      add :completed, :boolean, null: false

      timestamps()
    end
  end
end
