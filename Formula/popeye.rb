# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter!"
  homepage "https://imhotep.io/popeye"
  version "0.22.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/derailed/popeye/releases/download/v0.22.1/popeye_darwin_amd64.tar.gz"
      sha256 "3dafce865dd778e2501ccbfd53fcbeecfc3244a43d4d1b02446064e39ac58d4e"

      def install
        bin.install "popeye"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/derailed/popeye/releases/download/v0.22.1/popeye_darwin_arm64.tar.gz"
      sha256 "71dc8b8dc7d7cad60f9c377d4bb22a0ef5bac189c617951ebc20343f83a6704d"

      def install
        bin.install "popeye"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/popeye/releases/download/v0.22.1/popeye_linux_amd64.tar.gz"
        sha256 "d58a3c0ba45805d452c32628320eecdcb5172fd5f42c82e12aeecc7a17eb930b"

        def install
          bin.install "popeye"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/popeye/releases/download/v0.22.1/popeye_linux_arm64.tar.gz"
        sha256 "5188b0b521966113580f0fef7769173af6303061dee10df247536f9bb55fe988"

        def install
          bin.install "popeye"
        end
      end
    end
  end

  test do
    system "popeye version"
  end
end
