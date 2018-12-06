class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.16/sem_Darwin_x86_64.tar.gz"
  version "0.8.16"
  sha256 "c1d5b511c38e781608f1e29090cf5a60864411c1a8a6ec9bc19608c3f73568bc"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
