class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.11/sem_Darwin_x86_64.tar.gz"
  version "0.8.11"
  sha256 "9a0ab080845a05c2840e5cc2a916284748c646aea1c92f5bddb4c9d6e671daac"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
