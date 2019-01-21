class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.5/agent_Darwin_x86_64.tar.gz"
  version "0.0.5"
  sha256 "bc20dc37934d8494519146e6e702f54da42c3d0ea29228d361c0fea7848a983a"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
