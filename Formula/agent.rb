# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "1.3.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/semaphoreci/agent/releases/download/v1.3.4/agent_Darwin_x86_64.tar.gz"
    sha256 "fa5e4642790429d6cadf81198c28c974a7e57bfd975dabc46a53b56e39aba592"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v1.3.4/agent_Linux_x86_64.tar.gz"
      sha256 "81cbdd1b5b78989f606523bd7c53277632f434a42de23ea00c9ccfd19566c949"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
