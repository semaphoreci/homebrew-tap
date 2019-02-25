# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.2.1/agent_Darwin_x86_64.tar.gz"
  version "0.2.1"
  sha256 "0b52ff59790c1b67d4d7e5ca735c9f8ce2d7aaec83aa77108523126782f236cd"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
