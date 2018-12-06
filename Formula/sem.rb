class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.15/sem_Darwin_x86_64.tar.gz"
  version "0.8.15"
  sha256 "855c0ef56c20a4199b6c88eefea2325d400d9a12a66b78caae7b3663dfb8677c"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
