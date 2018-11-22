class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.12/sem_Darwin_x86_64.tar.gz"
  version "0.8.12"
  sha256 "14c9c25c58fa8dd096e18344d7abf33b83113c6559835564ce5da0abb40bfe3a"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
