apt_repository "ubuntu-14.04-trusty-postgresql-9.4" do
  uri "http://apt.postgresql.org/pub/repos/apt/"
  distribution "trusty-pgdg"
  components ["main"]
  key "https://www.postgresql.org/media/keys/ACCC4CF8.asc"
end

package "postgresql-devel" do
  package_name value_for_platform(
    ["centos","redhat","fedora","amazon"] => {"default" => "postgresql-devel"},
    "ubuntu" => {"default" => "libpq-dev"}
  )
  action :install
end

package "postgresql-client" do
  package_name value_for_platform(
    ["centos","redhat","fedora","amazon"] => {"default" => "postgresql"},
    "default" => "postgresql-client-9.4"
  )
  action :install
end
