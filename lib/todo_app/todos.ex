defmodule TodoApp.Todos do
  @moduledoc """
  The Todos context.
  """
  import Ecto.Query, warn: false
  alias TodoApp.Repo
  alias TodoApp.Todos.Task
  @doc """
  Returns the list of tasks.
  ## Examples
      iex> list_tasks()
      [%Task{}, ...]
  """
  def list_tasks do
    Repo.all(Task)
  end
  @doc """
  Gets a single task.
  Raises `Ecto.NoResultsError` if the Task does not exist.
  ## Examples
      iex> get_task!(123)
      %Task{}
      iex> get_task!(456)
      ** (Ecto.NoResultsError)
  """
  def get_task!(id), do: Repo.get!(Task, id)
  @doc """
  Creates a task.
  ## Examples
      iex> create_task(%{field: value})
      {:ok, %Task{}}
      iex> create_task(%{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_task(attrs \\ %{}) do
    %Task{}
    |> Task.changeset(attrs)
    |> Repo.insert()
  end
  @doc """
  Updates a task.
  ## Examples
      iex> update_task(task, %{field: new_value})
      {:ok, %Task{}}
      iex> update_task(task, %{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def update_task(%Task{} = task, attrs) do
    task
    |> Task.changeset(attrs)
    |> Repo.update()
  end
  @doc """
  Deletes a task.
  ## Examples
      iex> delete_task(task)
      {:ok, %Task{}}
      iex> delete_task(task)
      {:error, %Ecto.Changeset{}}
  """
  def delete_task(%Task{} = task) do
    Repo.delete(task)
  end
  @doc """
  Returns an `%Ecto.Changeset{}` for tracking task changes.
  ## Examples
      iex> change_task(task)
      %Ecto.Changeset{data: %Task{}}
  """
  def change_task(%Task{} = task, attrs \\ %{}) do
    Task.changeset(task, attrs)
  end

  alias TodoApp.Todos.List

  @doc """
  Returns the list of lists.
  ## Examples
      iex> list_lists()
      [%List{}, ...]
  """
  def list_lists do
    Repo.all(List)
  end

  @doc """
  Gets a single list.
  Raises `Ecto.NoResultsError` if the List does not exist.
  ## Examples
      iex> get_list!(123)
      %List{}
      iex> get_list!(456)
      ** (Ecto.NoResultsError)
  """
  def get_list!(id), do: Repo.get!(List, id)

  @doc """
  Creates a list.
  ## Examples
      iex> create_list(%{field: value})
      {:ok, %List{}}
      iex> create_list(%{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_list(attrs \\ %{}) do
    %List{}
    |> List.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a list.
  ## Examples
      iex> update_list(list, %{field: new_value})
      {:ok, %List{}}
      iex> update_list(list, %{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def update_list(%List{} = list, attrs) do
    list
    |> List.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a list.
  ## Examples
      iex> delete_list(list)
      {:ok, %List{}}
      iex> delete_list(list)
      {:error, %Ecto.Changeset{}}
  """
  def delete_list(%List{} = list) do
    Repo.delete(list)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking list changes.
  ## Examples
      iex> change_list(list)
      %Ecto.Changeset{data: %List{}}
  """
  def change_list(%List{} = list, attrs \\ %{}) do
    List.changeset(list, attrs)
  end
end