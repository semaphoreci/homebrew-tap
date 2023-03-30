# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.2/agent_Darwin_arm64.tar.gz"
      sha256 "10c5bdccbaa4ba3ac85d7a55050123d125d75396cff9262c5c9d700b6276f7f2"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.2/agent_Darwin_x86_64.tar.gz"
      sha256 "e00ebe0ac3149a97df3293ec3685698499762cb0f50a392ebef2403ceaa174cd"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.2/agent_Linux_armv6.tar.gz"
      sha256 "f69e5ab45459b0350a2191d1d0521acf4a41f74479c1fe673af4e54763059caa"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.2/agent_Linux_arm64.tar.gz"
      sha256 "18d5eab51a15efd3134dde3dec778b5c6c003f7311c379f55026912dee0b08a1"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.2/agent_Linux_x86_64.tar.gz"
      sha256 "1b0b8b3395e1e5fa75983c82d511faf1beb11e5fafdc9b0fe7fedaa09867e269"

      def install
        bin.install "agent"
      end
    end
  end

  test do
    system "#{bin}/agent version"
  end
end
