class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.10/sem_Darwin_x86_64.tar.gz"
  version "0.8.10"
  sha256 "a56bc0c2ee642a9fd778ab6f42201195d579cdb3bd5d1062f50e2877862353c1"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
