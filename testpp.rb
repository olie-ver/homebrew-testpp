class Testpp < Formula
  desc "Modern C++ unit testing framework"
  homepage "https://github.com/olie-ver/TestPlusPlus"
  url "https://github.com/olie-ver/TestPlusPlus/archive/refs/tags/v20.1.0.tar.gz"
  sha256 "2d7d497dd44318955e8b5d2938028b4b174baf338166ebf09a57446c5028b83e"
  license "OSNCL"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build",
                    "-DCMAKE_BUILD_TYPE=Release"

    system "cmake", "--build", "build"

    system "cmake", "--install", "build",
                    "--prefix", prefix
  end

  test do
    system "#{bin}/testpp", "--help"
  end
end
