class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.9/sem_Darwin_x86_64.tar.gz"
  version "0.8.9"
  sha256 "c603433c32f50f40f84fe1412e3de10ee5c37137eb6509fe2ea193ccaf83ef4d"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
