class WordReader
  def read_from_file(file_name)
    unless File.exist?(file_name)
      return nil
    end

    file = File.new(file_name)
    lines = file.readlines
    file.close
    return lines.sample.chomp

  end
end
