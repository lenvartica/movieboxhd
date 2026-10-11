class DecanMovie < Formula
  VERSION = "0.1.27"
  MACOS_SHA256 = "f15339a95b47bb08d6ae454c2e707df4b0d13801a7b9c3f0fb81a003d1108f54"
  LINUX_X64_SHA256 = "cd852435fd62cd92f025d0831427959d253aa38515e4e4c6e7bf987d05ea797b"
  LINUX_ARM64_SHA256 = "a72d06d59b7170d6cfc4ca3d8329363022afa08e0ad0064826470efe2e076b54"

  desc "Find and play movies, shows, anime, and live TV from your terminal"
  homepage "https://github.com/lenvartica/movieboxhd"
  version VERSION
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/lenvartica/movieboxhd/releases/download/v#{VERSION}/DecanMovie_macOS_Universal.tar.gz"
    sha256 MACOS_SHA256
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lenvartica/movieboxhd/releases/download/v#{VERSION}/DecanMovie_Linux_arm64.tar.gz"
      sha256 LINUX_ARM64_SHA256
    else
      url "https://github.com/lenvartica/movieboxhd/releases/download/v#{VERSION}/DecanMovie_Linux_x64.tar.gz"
      sha256 LINUX_X64_SHA256
    end
  end

  def install
    bin.install "decan-movie"
  end

  test do
    system "#{bin}/decan-movie", "--version"
  end
end
