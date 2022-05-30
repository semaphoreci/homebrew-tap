# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.0/sem_Darwin_arm64.tar.gz"
      sha256 "c1a119aad6ca5183613c30d7a6c4fa040cdcc3726165461a115a0e1bf13cf0fc"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.0/sem_Darwin_x86_64.tar.gz"
      sha256 "33a29160394f05748a905d1ab86ac49ca405e8bdda0cccd1778742a39ee32eac"

      def install
        bin.install "sem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.0/sem_Linux_x86_64.tar.gz"
      sha256 "7ca7e2cfa243db2afa381a2052b4470a42551f139a705f1035c1359320b41341"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.0/sem_Linux_arm64.tar.gz"
      sha256 "798de25d8aa580baf1fd4cf1a84cf95a189db40946fd8eaee2941f78e225dd4c"

      def install
        bin.install "sem"
      end
    end
  end

  test do
    system "#{bin}/sem version"
  end
end
