class LuaVarNginxModule < Formula
  desc "Nginx lua-var-nginx-module module"
  homepage "https://github.com/api7/lua-var-nginx-module"
  url "https://github.com/api7/lua-var-nginx-module/archive/v0.6.tar.gz"
  sha256 "c18af45fb9f7146b60467b96b8eb2b61f009a82180428c58f64432824e6a0588"
  head "https://github.com/api7/lua-var-nginx-module.git"

  bottle :unneeded

  def install
    pkgshare.install Dir["*"]
  end
end
