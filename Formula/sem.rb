class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.8/sem_Darwin_x86_64.tar.gz"
  version "0.8.8"
  sha256 "e609e41531850a8e7e2932bdfbf9b2b9fbb690cc27fadb4fa42a3352621392a5"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
