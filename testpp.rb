class Testpp < Formula
  desc "Modern C++ unit testing framework"
  homepage "https://github.com/olie-ver/TestPlusPlus"
  url "https://github.com/olie-ver/TestPlusPlus/archive/refs/tags/v20.0.0.tar.gz"
  sha256 "ef2608793cbe7315f22df7b43e129822211497c91a46b9aed11312b0890ec0ad"
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
