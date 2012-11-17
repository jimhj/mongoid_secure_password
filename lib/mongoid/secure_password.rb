# coding: utf-8
module Mongoid
  module SecurePassword
    extend ActiveSupport::Concern
    require 'bcrypt'

    included do
      field :password_digest, :type => String
      validates_presence_of :password
      validates_confirmation_of :password
      attr_accessible :password, :password_confirmation
    end
    
    def password
      if password_digest.present?
        @password ||= ::BCrypt::Password.new(password_digest)
      end
    end

    def password=(new_password) 
      if new_password.blank?
        self.errors.add(:password, "cannot be blank.")
      else
        @password = ::BCrypt::Password.create(new_password)
        self.password_digest = @password
      end
    end

  end
end