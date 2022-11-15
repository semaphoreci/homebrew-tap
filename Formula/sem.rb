# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.26.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.4/sem_Darwin_arm64.tar.gz"
      sha256 "5846ceb3f4539c302cc24b40b654d5ee776a6d730dbacf87330321cc4b1c33a3"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.4/sem_Darwin_x86_64.tar.gz"
      sha256 "a2ea0e9e78b3c0c8d848c84da1fa1d0120758e57113f9f50aaeb5ace32ae0a55"

      def install
        bin.install "sem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.4/sem_Linux_x86_64.tar.gz"
      sha256 "a593356db2355538221465b2aa7ae74395c7fcccb8e43c6caee44a9382448861"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.4/sem_Linux_arm64.tar.gz"
      sha256 "5530d1f9b55af265dbe36924c3ea5f8d7a2af048ff209db3e676df369ef53a58"

      def install
        bin.install "sem"
      end
    end
  end

  test do
    system "#{bin}/sem version"
  end
end
