defmodule Examples.ID3 do
  def parse(filename) do
    case File.read(filename) do
      {:ok, mp3} ->
        # Calculates the audio portion of the MP3 file
        mp3_byte_size = byte_size(mp3) - 128

        # Destructure and assign the ID3 tag to `id3_tag` variable
        << _ :: binary-size(mp3_byte_size), id3_tag :: binary >> = mp3

        # Destructure and pattern match the fields of an ID3 tag
        << "TAG", title :: binary-size(30),
          artist :: binary-size(30),
          album :: binary-size(30),
          year :: binary-size(4),
          _rest :: binary >> = id3_tag

        IO.puts "#{artist} - #{title} #{album}, #{year}"
      _falsy ->
        IO.puts "Couldn't open #{filename}"
    end
  end
end
