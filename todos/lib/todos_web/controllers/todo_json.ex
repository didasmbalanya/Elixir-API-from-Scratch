defmodule TodosWeb.TodoJSON do
  alias Todos.Todolist.Todo

  def index(%{todos: todos}) do
    todos |> Enum.map(&data/1)
  end

  defp data(%Todo{} = todo) do
    %{
      id: todo.id,
      title: todo.title,
      done: todo.done,
    }
  end

  def show(%{todo: todo}), do: data(todo)

end