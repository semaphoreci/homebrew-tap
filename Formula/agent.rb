class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.2/agent_Darwin_x86_64.tar.gz"
  version "0.0.2"
  sha256 "14ebc63bc78bad883631445a9b0b71dd1ec984172207a37e4f51f7abbd8da7c2"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
