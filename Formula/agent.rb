# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.3.0/agent_Darwin_x86_64.tar.gz"
      sha256 "72859f96815ab936c09edc0601420ce6b2d6baf515dba3503c0b253c90c3c840"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/agent/releases/download/v2.3.0/agent_Darwin_arm64.tar.gz"
      sha256 "c86cc88b67244908ca6252b32be40763702c05362d1ffb8a5dc5602a6908ce1f"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/semaphoreci/agent/releases/download/v2.3.0/agent_Linux_x86_64.tar.gz"
        sha256 "1025f8647b3a09fdf137b553dfd85654db5be7dd45ba6be479d2994f2fa41428"

        def install
          bin.install "agent"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/semaphoreci/agent/releases/download/v2.3.0/agent_Linux_armv6.tar.gz"
        sha256 "fda06739b5beb598e07225dea6aa13db4fc2ed896a587a41c57177513db7ad1a"

        def install
          bin.install "agent"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/semaphoreci/agent/releases/download/v2.3.0/agent_Linux_arm64.tar.gz"
        sha256 "3f7d301814b43bbc9ecd6402cfbf91c1d38fa7511ea2bd4f8ece060a09981c77"

        def install
          bin.install "agent"
        end
      end
    end
  end

  test do
    system "#{bin}/agent version"
  end
end
