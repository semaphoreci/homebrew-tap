# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/cli/releases/download/v0.25.0/sem_Darwin_arm64.tar.gz"
      sha256 "9e7390db4166a335db7f568ca1509a954d311285fec60fd6d5050611c995f238"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.25.0/sem_Darwin_x86_64.tar.gz"
      sha256 "a8ead8da2676849e111189008fe5d406008c9e79e762fc15e5fb1d6c615d4435"

      def install
        bin.install "sem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/cli/releases/download/v0.25.0/sem_Linux_arm64.tar.gz"
      sha256 "84bedea979e7b2f3a7e721c33ae16d297ee5759f802d3e645b474a839344a3a0"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.25.0/sem_Linux_x86_64.tar.gz"
      sha256 "8a9d572d74d576f512bc2459ecdff2f710ed46a6a8b1831f71b2586cb7d89394"

      def install
        bin.install "sem"
      end
    end
  end

  test do
    system "#{bin}/sem version"
  end
end
