defmodule Notes do
  def main(args) do
    args |> parse_args |> write_loop
  end
  defp parse_args([]) do
    "scratch"
  end
  defp parse_args([target|_]) do
    target
  end
  defp write_loop(target) do
    case target do
      "notes" -> {:ok, file} = File.open("notes.txt", [:append])
      "philosophy" ->  {:ok, file} = File.open("philosophy.txt", [:append])
      "science" -> {:ok, file} = File.open("science.txt", [:append])
      "programming" -> {:ok, file} = File.open("programming.txt", [:append])
      "ethics" -> {:ok, file} = File.open("ethics.txt", [:append])
      _ -> {:ok, file} = File.open("scratch.txt", [:append])
    end
    write_loop(target, file)
  end
  defp write_loop(target, file) do
    newline = IO.gets(:stdio, "#{target} * ")
    IO.write(:stdio, newline)
    IO.write(file, newline)
    write_loop(target, file)
  end
end
