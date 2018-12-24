class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.9.0/sem_Darwin_x86_64.tar.gz"
  version "0.9.0"
  sha256 "787bae1f895413bddec7c36cd1d8f38d33771559cb07ca98bb74f28eba23cf65"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
