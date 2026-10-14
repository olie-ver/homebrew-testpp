class Testpp < Formula
  desc "Modern C++ unit testing framework"
  homepage "https://github.com/olie-ver/TestPlusPlus"
  url "https://github.com/olie-ver/TestPlusPlus/archive/refs/tags/v20.3.1.tar.gz"
  sha256 "65817aa5db834482e3555ef9846e3e2a71ca75f55ea6c00e09905bb59b782380"
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
