class Testpp < Formula
  desc "Modern C++ unit testing framework"
  homepage "https://github.com/olie-ver/testpp"
  url "https://github.com/olie-ver/testpp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c3ab8ff13720e8ad9047dd39466b3c8974e592c2fa383d4a3960714caef0c4f2"
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
