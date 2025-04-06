# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Enc < Formula
  desc "Transcode various formats between stdin and stdout."
  homepage "https://github.com/maerics/enc"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maerics/enc/releases/download/v0.4.0/enc_v0.4.0_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "4419c2c4d7bb2fa934b7f207173ff2613ce7cd4ad272c342e3c52540dd20c962"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/maerics/enc/releases/download/v0.4.0/enc_v0.4.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a4b0d475b8995d0939c5288e2cf9a2c132b707c56609caee42fca14751df2401"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/maerics/enc/releases/download/v0.4.0/enc_v0.4.0_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "de97a7df71f8742ebc3e02283f2d6b2d405ea44686153cfab40dceb7ca7cf833"

        def install
          bin.install "enc"
          bin.install_symlink "enc" => "dec"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/maerics/enc/releases/download/v0.4.0/enc_v0.4.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "72cd7c70ffe83dafa7b35f18f2aeeab47edc32d511f3e321d84f23ee78785cf0"

        def install
          bin.install "enc"
          bin.install_symlink "enc" => "dec"
        end
      end
    end
  end
end
