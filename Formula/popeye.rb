# This file was generated by GoReleaser. DO NOT EDIT.
class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter."
  homepage "https://imhotep.io/popeye"
  url "https://github.com/derailed/popeye/releases/download/v0.3.8/popeye_0.3.8_Darwin_x86_64.tar.gz"
  version "0.3.8"
  sha256 "d71f3f62ec3e4b533e8b42d2a41d53ea3b757ea883377a471880f3a27ee08c49"

  def install
    bin.install "popeye"
  end

  test do
    system "popeye version"
  end
end
