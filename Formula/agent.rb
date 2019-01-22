class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.6/agent_Darwin_x86_64.tar.gz"
  version "0.0.6"
  sha256 "e02f182cd7150df172d961f193d1f250e4ba7f15488dcf222e212957c98e1fcc"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
