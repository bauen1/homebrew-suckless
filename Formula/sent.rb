class Sent < Formula
  desc "Simple plaintext presentation tool."
  homepage "http://tools.suckless.org/sent/"
  url "http://dl.suckless.org/tools/sent-0.2.tar.gz"
  sha256 "53b961f9d92a277a6408df7025b4a6deae6b655a797383c93442290e45391076"

  head "http://git.suckless.org/sent", :using => :git

  depends_on :x11 =>:run
  depends_on "farbfeld" => :run

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end
