# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.2.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.16/agent_Darwin_arm64.tar.gz"
      sha256 "f8a768c7b5217662f6e2f9fd4b005f3c83065e6b3db692c59e8d345416bfb5f3"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.16/agent_Darwin_x86_64.tar.gz"
      sha256 "2106267f98e2ce46ba3b5d59ec7af07ce68ded8d7d23cfc2f22df5118bb23502"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.16/agent_Linux_armv6.tar.gz"
      sha256 "02d7570072cbe5fcd6330d4afdfae69b3716b73182a8ef4c1813d69ef98754eb"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.16/agent_Linux_arm64.tar.gz"
      sha256 "9caaa9ea6253313087c137d4b3a26bcb267a03e0b6e8056197bd76761d942a3d"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.16/agent_Linux_x86_64.tar.gz"
      sha256 "0dd5b2c820e8cba21f32ce33481ca857c7b47dc6fc4db0aa72e70c018326966d"

      def install
        bin.install "agent"
      end
    end
  end

  test do
    system "#{bin}/agent version"
  end
end
