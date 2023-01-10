# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.26.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.6/sem_Darwin_x86_64.tar.gz"
      sha256 "4c8deb525d31f03aa65883869ae4eaf16b86ccf83cb2c06c1737c56ef93498e0"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.6/sem_Darwin_arm64.tar.gz"
      sha256 "712ddd366fb35fdcad1912b3e7ef9d29bdedd4138784e95441ca9cf65f6427df"

      def install
        bin.install "sem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.6/sem_Linux_x86_64.tar.gz"
      sha256 "0e8ed9b2a2d466f2e2e06353cf2acf618d568ec68269afee9339beb75e39d4f9"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/cli/releases/download/v0.26.6/sem_Linux_arm64.tar.gz"
      sha256 "1501dc61cb87f6adaa945066d339d7c2cd523c351cbc0df9c042abb4fbcb9cdb"

      def install
        bin.install "sem"
      end
    end
  end

  test do
    system "#{bin}/sem version"
  end
end
