# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Enc < Formula
  desc "Transcode various formats between stdin and stdout."
  homepage "https://github.com/maerics/enc"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maerics/enc/releases/download/v0.2.1/enc_v0.2.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c1742992221a1bea9b307603f85b985ae6f98ac5929194505c253534a5a2862e"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maerics/enc/releases/download/v0.2.1/enc_v0.2.1_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "64cf5433c7882923140e466484dcfa9b0814a307425e4ed2cbf238b1c42a536c"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maerics/enc/releases/download/v0.2.1/enc_v0.2.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d8db0b430433580d14e96f07e6976ea675a0c715c550245e5736d9d0fece9bbf"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maerics/enc/releases/download/v0.2.1/enc_v0.2.1_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "272085081ebc7c943b892b8fca0b1edf5781853938eaabe419856ba31a767458"

      def install
        bin.install "enc"
        bin.install_symlink "enc" => "dec"
      end
    end
  end
end
