# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.12/agent_Darwin_arm64.tar.gz"
      sha256 "de13b6d83b24dfff38345c3d3d5672a0ce04fe5d47c5dfa45d033e2c4ebbfe60"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.12/agent_Darwin_x86_64.tar.gz"
      sha256 "73b4b140e5640c974792bd687830191d04fbfab1dee469793bb587ddc122ab0c"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.12/agent_Linux_armv6.tar.gz"
      sha256 "68602b9bba82bf255746ea33bc3021d7730e3c7a80b478b3d577f4472b98e8d6"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.12/agent_Linux_arm64.tar.gz"
      sha256 "1194b2c41bd4c76ad3850012d9c5c16b5b2c338b0203b02a4bd6d0668490ffb6"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.1.12/agent_Linux_x86_64.tar.gz"
      sha256 "b142f66049af02674c7e8cb42ab99178f97970f45a4425bfa1873931f2ef8dab"

      def install
        bin.install "agent"
      end
    end
  end

  test do
    system "#{bin}/agent version"
  end
end
