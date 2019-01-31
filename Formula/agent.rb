class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.7/agent_Darwin_x86_64.tar.gz"
  version "0.0.7"
  sha256 "9c489e9c064b4a89361cb5c43385776dcc1562e0cab9be7c92837aa89e08d60e"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
