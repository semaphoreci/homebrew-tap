class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.17/sem_Darwin_x86_64.tar.gz"
  version "0.8.17"
  sha256 "b030f42bb26647f766f9724e71506b89cc7e3e44274f7200cc98f178a02b702a"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
