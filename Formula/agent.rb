class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.12/agent_Darwin_x86_64.tar.gz"
  version "0.0.12"
  sha256 "ad84174c431492fd87fb4c5d35dbff7f66a0d29e3fd26c4f296168525425afff"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
