# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.0.12"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.12/agent_Darwin_x86_64.tar.gz"
      sha256 "bb11b4e54fe6c29488cc939ba173e3c1a9d70151340b2ee1c6b6c6ae0244100f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.12/agent_Linux_x86_64.tar.gz"
      sha256 "5064b019ba219ee26c2921766d8a32fb8fbc1a62b9ccbc9e76c8cec177012c93"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.12/agent_Linux_armv6.tar.gz"
      sha256 "06f927defec06f1425a77b1e57392bebc092c4682330e5279a9fb98b7f0f92fc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.12/agent_Linux_arm64.tar.gz"
      sha256 "de5d4d3efb75bb56927a6757921fb5b6763d6ef7f8079150b0e6170ce4252bb7"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end
