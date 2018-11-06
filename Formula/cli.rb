class Cli < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.7/cli_Darwin_x86_64.tar.gz"
  version "0.8.7"
  sha256 "47f07ae54c26be0dede4c553212361f16830f61d6a3f5deb3ddf4fd01ebcf092"

  def install
    bin.install "cli"
  end

  test do
    system "#{bin}/sem version"
  end
end
