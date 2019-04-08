# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.4.4/agent_Darwin_x86_64.tar.gz"
  version "0.4.4"
  sha256 "97dd4afa9f25f05a26b80e36c5a8ef4f165542a1ddaced667a0bec894c7cc4c2"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
