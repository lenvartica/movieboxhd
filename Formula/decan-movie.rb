class DecanMovie < Formula
  VERSION = "0.1.26"
  MACOS_SHA256 = "e35297d7a83b36cd14dd7e8ca493acd230f24d0dc56d2fdded79b90130c4beb3"
  LINUX_X64_SHA256 = "03dad5d2fc00aa52c6efd7470b649771a5dadecbbcafac622de21bc3964fbcf8"
  LINUX_ARM64_SHA256 = "3e56be589396f490ef0228dde08e1571ac3e6cb937b91ecf4c6aa837e917d711"

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
