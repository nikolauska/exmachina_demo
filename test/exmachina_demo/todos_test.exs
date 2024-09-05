defmodule ExmachinaDemo.TodosTest do
  use ExmachinaDemo.DataCase, async: true

  alias ExmachinaDemo.Todos

  describe "todo" do
    test "Test inserting default todo" do
      assert [] = Todos.list_todo()
      _todo = insert(:todo)
      assert [todo] = Todos.list_todo()
      assert is_binary(todo.title)
      assert todo.completed == false
    end

    test "Test inserting todo with custom title" do
      assert [] = Todos.list_todo()
      _todo = insert(:todo, title: "test")
      assert [todo] = Todos.list_todo()
      assert todo.title == "test"
      assert todo.completed == false
    end

    test "Test inserting completed todo" do
      assert [] = Todos.list_todo()
      _todo = insert(:todo, completed: true)
      assert [todo] = Todos.list_todo()
      assert is_binary(todo.title)
      assert todo.completed == true
    end

    test "Test inserting multiple todos" do
      assert [] = Todos.list_todo()
      _todos = insert_list(3, :todo)
      assert [todo1, todo2, todo3] = Todos.list_todo()
      assert todo1.title != todo2.title
      assert todo2.title != todo3.title
    end

    test "Test inserting multiple completed todos" do
      assert [] = Todos.list_todo()
      _todos = insert_list(3, :todo, completed: true)
      assert [todo1, todo2, todo3] = Todos.list_todo()
      assert todo1.title != todo2.title
      assert todo2.title != todo3.title
      assert todo1.completed == true
      assert todo2.completed == true
      assert todo3.completed == true
    end
  end
end
