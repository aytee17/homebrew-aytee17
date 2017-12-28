require "formula"

class Gtsql < Formula
  homepage "https://github.com/aytee17/gtfs-to-sqlite"
  url "https://github.com/aytee17/gtfs-to-sqlite/releases/download/v0.0.1-beta/gtfs-to-sqlite-0.0.1.zip"
  sha256 "5c3e0247a222ab24a44e43e6d9d641dcc24c6d80"

  def install
  	inreplace "brew/gtsql", "##PREFIX##", "#{prefix}"
  	prefix.install "gtfs-to-sqlite-0.0.1-all.jar"
  	bin.install "brew/gtsql"
  end
end
