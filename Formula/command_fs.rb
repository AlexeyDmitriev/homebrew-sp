class CommandFs < Formula
  desc "Tool to create FS where each file is processed"
  homepage "https://github.com/AlexeyDmitriev/command_fs"
  version "1.0"

  url "https://github.com/AlexeyDmitriev/command_fs.git",
    :tag=> "v1.0"

  head "https://github.com/AlexeyDmitriev/command_fs.git"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on :osxfuse

  def install
    mkdir "build" do
      args = std_cmake_args
      args << ".."
      system "cmake", "-G", "Ninja", *args
      system "ninja", "command_fs"
      bin.install "command_fs"
    end
  end
end
