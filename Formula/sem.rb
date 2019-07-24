# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/cli/releases/download/v0.14.1/sem_Darwin_x86_64.tar.gz"
  version "0.14.1"
  sha256 "c0f64c88eeda93eab308fb777142f3b717945c25b47df83ffcb09b98dca1f20e"

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
