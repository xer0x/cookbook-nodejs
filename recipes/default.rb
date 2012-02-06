# A node.js recipe

# Install using Chris Lea's packages

# sudo add-apt-repository ppa:chris-lea/node.js
# sudo apt-get update
# sudo apt-get install nodejs

case node[:platform]
when "debian", "ubuntu"

  include_recipe "apt"

  apt_repository "nodejs" do
    uri "http://ppa.launchpad.net/chris-lea/node.js/ubuntu"
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "C7917B12"
    action :add
  end

  package "nodejs"

else 
  # compile node on another OS?

end
