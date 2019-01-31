class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.8/agent_Darwin_x86_64.tar.gz"
  version "0.0.8"
  sha256 "cb8866da1ab1da2f35e2fa4fd6c071e48d802ac22435eaf35b1360f1c0fc3fe8"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
