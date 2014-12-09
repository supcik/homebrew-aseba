require "formula"

class Aseba < Formula
  homepage "http://aseba.wikidot.com"
  url "https://github.com/aseba-community/aseba/archive/1.3.3.tar.gz"
  sha1 "023ade01c6d859f4e97a90546bc6f5de3adf6ebb"
  head "https://github.com/aseba-community/aseba.git"

  head do
    depends_on "protobuf"
  end
  
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
