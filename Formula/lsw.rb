class Lsw < Formula
  desc "Lists the titles of all running X windows to stdout, similar to ls(1). Might be useful for script integration."
  homepage "http://tools.suckless.org/x/lsw"
  url "http://dl.suckless.org/tools/lsw-0.3.tar.gz"
  version "0.3"
  sha256 "0b3f3ce16eef060df6e0d90327ee82593dfd75281347908698747cfa3f8d0655"

  depends_on :x11

  def install
    system "make", "all"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/lsw"
  end
end
