# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.2.23"

  on_macos do
    on_intel do
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.23/agent_Darwin_x86_64.tar.gz"
      sha256 "d1f0cc1416f05355c7675e136bc507de7b9a0d817dd51b55830b73b98066ac97"

      def install
        bin.install "agent"
      end
    end
    on_arm do
      url "https://github.com/semaphoreci/agent/releases/download/v2.2.23/agent_Darwin_arm64.tar.gz"
      sha256 "2bb125171af01ba5ebaf03080547a67e9cc58af49bff57efd46842fcc13a18e4"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/semaphoreci/agent/releases/download/v2.2.23/agent_Linux_x86_64.tar.gz"
        sha256 "f9b748311489cc76efab10d8cc3c9f146a73b474301218cd627eb5331d438db8"

        def install
          bin.install "agent"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/semaphoreci/agent/releases/download/v2.2.23/agent_Linux_armv6.tar.gz"
        sha256 "9a5d19fe16f43631b79f513755f1501971916c93141307e8db8b2c7643dff7e3"

        def install
          bin.install "agent"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/semaphoreci/agent/releases/download/v2.2.23/agent_Linux_arm64.tar.gz"
        sha256 "23decac57e7be012dd700c7d367bd804dcbb7529bb6c1276ab36d51a25df752a"

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
