require "formula"

class Aseba < Formula
  homepage "http://aseba.wikidot.com"
  url "https://github.com/supcik/aseba.git", :branch => "dev"

  depends_on "protobuf"
  depends_on "cmake" => :build
  depends_on "qt"
  depends_on "qwt"
  depends_on "dashel"
  depends_on "enki"
  depends_on "d-bus" => :recommended

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/asebacmd"
  end
end
