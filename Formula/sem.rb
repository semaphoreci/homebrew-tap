# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.28.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.28.6/sem_Darwin_x86_64.tar.gz"
      sha256 "a792d1a83a0e35a9918208b6a2ca03a3170ecba763b73c752a4eba85e8b83f3b"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/cli/releases/download/v0.28.6/sem_Darwin_arm64.tar.gz"
      sha256 "b917411cb82bf04e7c38e2ecc0863061c6134be214d3fd95ee710292bd071fb7"

      def install
        bin.install "sem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.28.6/sem_Linux_x86_64.tar.gz"
      sha256 "705ac18f583eafebbc28958a3172e1eac707079b51899612402c180f4c757704"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/cli/releases/download/v0.28.6/sem_Linux_arm64.tar.gz"
      sha256 "b17728778a6877d14123843598e1dc96248b0577e2a12fbefed023a497d8fe1b"

      def install
        bin.install "sem"
      end
    end
  end

  test do
    system "#{bin}/sem version"
  end
end
