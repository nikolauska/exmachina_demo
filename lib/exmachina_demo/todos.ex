defmodule ExmachinaDemo.Todos do
  @moduledoc """
  The Todos context.
  """

  import Ecto.Query, warn: false
  alias ExmachinaDemo.Repo

  alias ExmachinaDemo.Todos.Todo

  @doc """
  Returns the list of todo.

  ## Examples

      iex> list_todo()
      [%Todo{}, ...]

  """
  def list_todo do
    Repo.all(Todo)
  end
end
