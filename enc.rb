# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Enc < Formula
  desc "Transcode various formats between stdin and stdout."
  homepage "https://github.com/maerics/enc"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maerics/enc/releases/download/v0.3.0/enc_v0.3.0_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "b1eb59523218b61c1d44453da8a2b12fc4401ad454d6c56a80aa09bd49e25de6"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/maerics/enc/releases/download/v0.3.0/enc_v0.3.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5c873972200f7d9f48ef3bb45e6f6a9f6a9780cc90d5e1be36a29faacacb5622"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/maerics/enc/releases/download/v0.3.0/enc_v0.3.0_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "aad57e8de1483f726d4f0482213a5fff64b087c3658b716da84a1237049016cb"

        def install
          bin.install "enc"
          bin.install_symlink "enc" => "dec"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/maerics/enc/releases/download/v0.3.0/enc_v0.3.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "52d76399a58f85cbfa01c5547238c63fd1e3bc123dc02f6f5d24493233e52439"

        def install
          bin.install "enc"
          bin.install_symlink "enc" => "dec"
        end
      end
    end
  end
end
