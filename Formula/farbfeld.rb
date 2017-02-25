class Farbfeld < Formula
  desc "A lossless image format which is easy to parse, pipe and compress."
  homepage "http://tools.suckless.org/farbfeld/"
  url "http://dl.suckless.org/farbfeld/farbfeld-2.tar.gz"
  sha256 "a366e7628274fb9b4dc9508a7340a32b5e7557d99895b7ed7b5165241d613f58"

  head "http://git.suckless.org/farbfeld", :using => :git

  depends_on "libpng" => :run
  depends_on "libjpeg-turbo" => :run

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end
