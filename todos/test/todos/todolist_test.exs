defmodule Todos.TodolistTest do
  use Todos.DataCase
  alias Todos.Todolist

  describe "todos" do
    import Todos.TodolistFixtures

    test "list_todos/0 returns all todos" do
      todo = todo_fixture()
      assert Todolist.list_todos() == [todo]
    end
  end
end
