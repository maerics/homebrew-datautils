# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Enc < Formula
  desc "Transcode various formats between stdin and stdout."
  homepage "https://github.com/maerics/enc"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maerics/enc/releases/download/v0.4.1/enc_v0.4.1_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "2b519b5a8ec844837b90f018d771f901dbad9f1e867887bff76bf4d03f629cd9"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/maerics/enc/releases/download/v0.4.1/enc_v0.4.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6a8945b66e5d15129bfcb8909593416a03904f06d4ea2f2d525335452e04d2ce"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/maerics/enc/releases/download/v0.4.1/enc_v0.4.1_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "91354e4774edde86329712e69ed84e46f87bc268e574f9cc8efeee856a829333"

        def install
          bin.install "enc"
          bin.install_symlink "enc" => "dec"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/maerics/enc/releases/download/v0.4.1/enc_v0.4.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "65b41c2147382c78f56d017e9d2372254186c0366aee9e68fd143afc04468263"

        def install
          bin.install "enc"
          bin.install_symlink "enc" => "dec"
        end
      end
    end
  end
end
