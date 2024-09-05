defmodule ExmachinaDemo.Factory do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ExmachinaDemo` context.
  """
  use ExMachina.Ecto, repo: ExmachinaDemo.Repo

  @doc """
  Define a factory for the `Todo` schema.
  """
  def todo_factory() do
    %ExmachinaDemo.Todos.Todo{
      title: sequence(:title, &"title-#{&1}"),
      completed: false
    }
  end
end
