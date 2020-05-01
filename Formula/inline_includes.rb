class CommandFs < Formula
  desc "Script to inline includes"
  homepage "https://github.com/AlexeyDmitriev/inline_includes"
  version "1.0"

  url "https://github.com/AlexeyDmitriev/inline_includes.git",
    :tag=> "v1.0"

  head "https://github.com/AlexeyDmitriev/inline_includes.git"

  def install
    bin.install "inline_includes"
  end
end
