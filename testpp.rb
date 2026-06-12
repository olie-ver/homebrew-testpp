class Testpp < Formula
  desc "Modern C++ unit testing framework"
  homepage "https://github.com/yourusername/testpp"
  url "https://github.com/yourusername/testpp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
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
