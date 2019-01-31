class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  url "https://github.com/semaphoreci/agent/releases/download/v0.0.9/agent_Darwin_x86_64.tar.gz"
  version "0.0.9"
  sha256 "5d2ddc92561f39c2868197e679e1fd008ecc57f6a32bd04198674214c53e7a73"

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
