# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.13/agent_Darwin_x86_64.tar.gz"
  version "0.0.13"
  sha256 "d26d03e83a135cc0b822c525d8e1615cd51055cd5cbb965f58bda30faccd8cd8"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
