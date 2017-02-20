class Quark < Formula
  desc "quark is an extremly small and simple http get-only web server. It only serves static pages on a single host."
  homepage "http://tools.suckless.org/quark"
  url "git://git.suckless.org/quark"
  version "0.1"
  sha256 ""

  def install
    system "make", "all"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # TODO: think of some way to test a webserver
    system "#{bin}/quark", "-v"
  end
end
