# This file was generated by GoReleaser. DO NOT EDIT.
class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter."
  homepage "https://imhotep.io/popeye"
  url "https://github.com/derailed/popeye/releases/download/v0.3.3/popeye_0.3.3_Darwin_x86_64.tar.gz"
  version "0.3.3"
  sha256 "7de39b438c0932bd6b82e954751d0a034122f49624b9a935d031f6d777fe3b53"

  def install
    bin.install "popeye"
  end

  test do
    system "popeye version"
  end
end
