class Testpp < Formula
  desc "Modern C++ unit testing framework"
  homepage "https://github.com/olie-ver/TestPlusPlus"
  url "https://github.com/olie-ver/TestPlusPlus/archive/refs/tags/v20.0.10.tar.gz"
  sha256 "98d9105645fa5986fadcb347de01e430ffce857e9d45fbd9a092ed205f499df4"
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
