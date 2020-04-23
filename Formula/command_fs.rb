class CommandFS < Formula
  desc "Tool to create FS where each file is processed"
  homepage "https://github.com/AlexeyDmitriev/command_fs"
  version "0.1"
  stable do
    url "https://github.com/AlexeyDmitriev/command_fs/archive/v0.1.tar.gz"
    sha256 "9952dda314aa6692cc3edd13dd5d9537f787ff39849f32ec580f3d93e1539e96"
  end

  head url "https://github.com/AlexeyDmitriev/command_fs.git"

  depends_on "cmake" => :build
  depends_on "ninja" => :build

  def install
    mkdir "build" do
      args = std_cmake_args
      args << ".."
      system "cmake", "-G", "Ninja", *args
      system "ninja" "command_fs"
      bin.install "command_fs"
    end
  end
end
