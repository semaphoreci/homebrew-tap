class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.4/agent_Darwin_x86_64.tar.gz"
  version "0.0.4"
  sha256 "1760b7d363c15869e1f96fdb1ae54b0951ad70691e29ff538f95f10070d53569"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
