defmodule Discuss.Comment do
  @derive {Jason.Encoder, only: [:content]}

  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :content, :string
    belongs_to :user, Discuss.User
    belongs_to :topic, Discuss.Topic
    timestamps()
  end

  @doc false
  def changeset(topic, attrs \\ %{}) do
    topic
    |> cast(attrs, [:content])
    |> validate_required([:content])
  end
end
