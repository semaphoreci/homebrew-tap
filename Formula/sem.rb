# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/cli/releases/download/v0.27.0/sem_Darwin_arm64.tar.gz"
      sha256 "c4a82276fe9dff287fbcad70339b779d7bc10cf556168ea51f5c406ee783e7fe"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.27.0/sem_Darwin_x86_64.tar.gz"
      sha256 "b07a1cd094e10fec6580d70453ed17f4e0fa9db4a26e6b1f932f8e0da4fefebc"

      def install
        bin.install "sem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/cli/releases/download/v0.27.0/sem_Linux_x86_64.tar.gz"
      sha256 "ddc21d36a78325c2651ffcc98380fa4a7277f040ca96ae604ae51e20f3d7b46a"

      def install
        bin.install "sem"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/cli/releases/download/v0.27.0/sem_Linux_arm64.tar.gz"
      sha256 "361340c8c2ddfde03065ef26f4f00053f2128639ef0ff0408ed3b9ddf3e75414"

      def install
        bin.install "sem"
      end
    end
  end

  test do
    system "#{bin}/sem version"
  end
end
