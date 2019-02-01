class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.10/agent_Darwin_x86_64.tar.gz"
  version "0.0.10"
  sha256 "5ffaf647d1f49efebda756caa59c4fdb8c77928cec568f528da6ab567186573e"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
