class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.3/agent_Darwin_x86_64.tar.gz"
  version "0.0.3"
  sha256 "c1e03f6575361fabbb5c6d539eaf7f4aced7a3a260de48cf8536bcd06d28be82"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
