class Lst < Formula
  desc "Save snippets of information quickly through the command line"
  homepage "https://liszt.readthedocs.io"
  url "https://github.com/scamacho23/homebrew-liszt/archive/v1.1.6.tar.gz"
  sha256 "55f90361d00e5d579dadc44885b7cb984ece55dbe6ec66cb771174c7e6bf2adc"
  license "GNU GPL v3"
  version "1.1.6"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    bin.install "lst"
  end

  test do
    system "#{bin}/lst", "-h"
  end
end
