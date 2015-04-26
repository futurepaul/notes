defmodule Notes do
  def main(args) do
    args |> parse_args |> write_loop
  end
  defp parse_args([]) do
    "scratch"
  end
  defp parse_args([target|_]) do
    target
    |> String.split(".")
    |> List.first
  end
  defp write_loop(target) do
    {:ok, dest_file} = File.read(".notes")
    [dest|_] = String.split(dest_file, "\n")
    purtify = IO.ANSI.magenta <> "***" <> IO.ANSI.reset
    case target do
      target when target in ["notes", "programming", "philosophy", "science", "ethics", "god"] ->
        {:ok, file} = File.open(dest <> "#{target}.txt", [:append])
        IO.puts(purtify <> dest <> "#{target}.txt" <> purtify)
      _ ->
        {:ok, file} = File.open(dest <> "scratch.txt", [:append])
        IO.puts(purtify <> dest <> "scratch.txt" <> purtify)
    end
    write_loop(target, file)
  end
  defp write_loop(target, file) do
    newline = IO.gets(:stdio, "#{target}" <> IO.ANSI.magenta <> " *> " <> IO.ANSI.reset)
    IO.write(:stdio, IO.ANSI.reverse <> newline <> IO.ANSI.reset)
    IO.write(file, newline)
    write_loop(target, file)
  end
end
