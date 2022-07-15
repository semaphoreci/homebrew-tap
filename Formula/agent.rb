# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.3/agent_Darwin_arm64.tar.gz"
      sha256 "b3b288491bfd60a9cffca56a34ce8ea7aa6202081c3767845d8ae15a1d21bf84"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.3/agent_Darwin_x86_64.tar.gz"
      sha256 "fca98109aaa636bbab2a334444d7fab3cf15b203443b4d76829b21c3996562e8"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.3/agent_Linux_armv6.tar.gz"
      sha256 "e0ccc8be13850a59cec454dfccea993f57fc5d515fd2f11551b07a01408d07c5"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.3/agent_Linux_x86_64.tar.gz"
      sha256 "54219169a6930edb51b1f38cf0bb4a6fe571cc991e45cbbbe754d519f5832489"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.3/agent_Linux_arm64.tar.gz"
      sha256 "abb056632dd1fee914ffc6b149598793c8150958cc66f646fae850fa1db1dd81"

      def install
        bin.install "agent"
      end
    end
  end

  test do
    system "#{bin}/agent version"
  end
end
