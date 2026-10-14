class Testpp < Formula
  desc "Modern C++ unit testing framework"
  homepage "https://github.com/olie-ver/TestPlusPlus"
  url "https://github.com/olie-ver/TestPlusPlus/archive/refs/tags/v20.3.1.tar.gz"
  sha256 "cae9e4879ee2b14264002b5b12a8ba1f2780ae82ac1ec88e0ead9465a68e972a"
  license "MIT"

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
