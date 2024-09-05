defmodule ExmachinaDemo.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todo" do
    field :title, :string
    field :completed, :boolean

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :completed])
    |> validate_required([:title, :completed])
  end
end
