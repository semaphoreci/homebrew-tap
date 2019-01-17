class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.1/agent_Darwin_x86_64.tar.gz"
  version "0.0.1"
  sha256 "39732747195de1d237221d84ecfaada202766fdb68003505dd04d0a209ca0501"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
