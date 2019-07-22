class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :investors
end
