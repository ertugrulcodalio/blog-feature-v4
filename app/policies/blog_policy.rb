# frozen_string_literal: true

class BlogPolicy < Rhino::ResourcePolicy
  self.resource_slug = 'blogs'

  def permitted_attributes_for_show(user)
    return ['*'] if has_role?(user, 'admin') || has_role?(user, 'user')
    []
  end
def hidden_attributes_for_show(user)
  []
end
  def permitted_attributes_for_create(user)
    return ['*'] if has_role?(user, 'admin')
    []
  end
  def permitted_attributes_for_update(user)
    return ['*'] if has_role?(user, 'admin')
    []
  end
end
