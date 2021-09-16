# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sem < Formula
  desc "Semaphore 2.0 command line interface."
  homepage "https://semaphoreci.com"
  version "0.24.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/semaphoreci/cli/releases/download/v0.24.0/sem_Darwin_x86_64.tar.gz"
    sha256 "7368774b611c5b0102125b2b73c959844a4bbd67d658979c808a38feff0eaaf2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/semaphoreci/cli/releases/download/v0.24.0/sem_Darwin_arm64.tar.gz"
    sha256 "8cc88fa2196fceb8477af9b4d1967ec15c8c745c7944616606ff3bc7124af05f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/semaphoreci/cli/releases/download/v0.24.0/sem_Linux_x86_64.tar.gz"
    sha256 "bff56d891ba4e66ac1a7f9a75393a56bb703798521b7015928bf60108ed3fbc9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/semaphoreci/cli/releases/download/v0.24.0/sem_Linux_arm64.tar.gz"
    sha256 "2720c8c99aec2b41a3e32ad863d2a0d533ad8ce1d9377bab757c649f76926467"
  end

  def install
    bin.install "sem"
  end

  test do
    system "#{bin}/sem version"
  end
end
