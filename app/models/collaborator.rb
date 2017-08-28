class Collaborator < ApplicationRecord

  belongs_to :wiki
  # belongs_to :user

  def self.update_collaborators(collaborator_string)
      return Collaborator.none if collaborator_string.blank?
      collaborator_string.split(",").map do |collaborator|
          Collaborator.find_or_create_by(email: collaborator.strip)
      end
  end

end
