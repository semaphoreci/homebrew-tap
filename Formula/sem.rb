class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.8.14/sem_Darwin_x86_64.tar.gz"
  version "0.8.14"
  sha256 "5f33670a4de0ff5b95acdc1b72160039fcd587910b01f4150d907f4829dcb516"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
