# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.23.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/semaphoreci/cli/releases/download/v0.23.1/sem_Darwin_x86_64.tar.gz"
    sha256 "971d078b1b0eb20b82badc8b6f95006d8af8ba4e54b54623fe3269da6af8d433"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/semaphoreci/cli/releases/download/v0.23.1/sem_Darwin_arm64.tar.gz"
    sha256 "bba81fa74b0e7e702d40b5bb7fcc33645ef1c7dd94c4a3d365da1af25b5459fc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/semaphoreci/cli/releases/download/v0.23.1/sem_Linux_x86_64.tar.gz"
    sha256 "60902807408ce03cbeff797c4bd2b4d9cbfefab4e61674eab7ae4ecae5dab1ba"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/semaphoreci/cli/releases/download/v0.23.1/sem_Linux_arm64.tar.gz"
    sha256 "128d52a2da99e92b7ee1c4d0e8383ee3f6629ec4e47d47be996b62d6826c34e3"
  end

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
