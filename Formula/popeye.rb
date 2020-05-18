# This file was generated by GoReleaser. DO NOT EDIT.
class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter."
  homepage "https://imhotep.io/popeye"
  version "0.8.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/popeye/releases/download/v0.8.3/popeye_Darwin_x86_64.tar.gz"
    sha256 "f6e35ce389f4ab0848e3cff432f5c84e4a1cfd76c9836e5bf568cc7e81ce634a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/popeye/releases/download/v0.8.3/popeye_Linux_x86_64.tar.gz"
      sha256 "e5ddc8590fb49157d7c3ed733826bd4cd931b3a966252b3e668624732657ed27"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/popeye/releases/download/v0.8.3/popeye_Linux_arm64.tar.gz"
        sha256 "7b341aa02791ecdae97c474cddc14f91dceb77ab047313d658f36b2881080f3e"
      else
      end
    end
  end

  def install
    bin.install "popeye"
  end

  test do
    system "popeye version"
  end
end
