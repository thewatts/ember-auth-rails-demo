class UserSerializer < BaseSerializer
  attributes :id, :email, :param

  def params
    namePortion = email.split('@').first
    "#{id}-#{namePortion.dasherize.parameterize}"
  end
end