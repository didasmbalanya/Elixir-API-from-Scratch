defmodule Todos.Todolist.Todo do
  use Ecto.Schema

  # @derive {Jason.Encoder, only: [:id, :title, :done]}
  schema "todos" do
    field :title, :string
    field :done, :boolean, default: false

    timestamps(type: :utc_datetime)
  end

  import Ecto.Changeset

# schema "todos" ...

def changeset(todo, attrs) do
  todo
  |> cast(attrs, [:title, :done])
  |> validate_required([:title])
  |> validate_length(:title, min: 5)
end

end
