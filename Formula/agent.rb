# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.2/agent_Darwin_x86_64.tar.gz"
      sha256 "5ee8f3a93c4e2437af8bcdd948a36f81b264efef6ade6f70ada3293d96c79c82"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.2/agent_Darwin_arm64.tar.gz"
      sha256 "c1cf65842645861e606ecf7bbe136acf3592191b1256ff3ef3fb612a5026ac54"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.2/agent_Linux_armv6.tar.gz"
      sha256 "430be67c997228459d83220ea06c264ef0e2aeabeed9a21998c441a57a00610a"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.2/agent_Linux_arm64.tar.gz"
      sha256 "1b2dcf9d4419bde0a83d7c00460d75d5078e761ac00b174c793b17d5143c7ace"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.2/agent_Linux_x86_64.tar.gz"
      sha256 "450a95d8890d20cb52af179c428021293351fb57f5bb2802e4e22ca0de6e042b"

      def install
        bin.install "agent"
      end
    end
  end

  test do
    system "#{bin}/agent version"
  end
end
