# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dgst < Formula
  desc "Compute and print message digest hash values of stdin."
  homepage "https://github.com/maerics/dgst"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maerics/dgst/releases/download/v0.1.0/dgst_v0.1.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e6e154abb20497c46b84542ad425dcb968b9998418699434416c4c8884f39ec8"

      def install
        bin.install "dgst"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maerics/dgst/releases/download/v0.1.0/dgst_v0.1.0_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "65cc2ee02a62d98aaf521cc6c5d708d97b39d373017baf59b7d6d809d4319780"

      def install
        bin.install "dgst"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maerics/dgst/releases/download/v0.1.0/dgst_v0.1.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "61785ea8dec799a4cd1446c7fce863ebc29e72e49090474c3251589bdba922a1"

      def install
        bin.install "dgst"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maerics/dgst/releases/download/v0.1.0/dgst_v0.1.0_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "3dbfd14a7cc6d7df337c29ee35bd9452892d574e2d737bc814ebbf2a5cf27f9e"

      def install
        bin.install "dgst"
      end
    end
  end
end
