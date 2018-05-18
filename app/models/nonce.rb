class Nonce < ApplicationRecord
  belongs_to :vote

  validate :usable?, on: :update

  EXPIRES_AFTER = 2.hours

  def cast?
    !vote.cast_at.nil?
  end

  def expired?
    Time.now - created_at < Nonce::EXPIRES_AFTER
  end

  def usable?
    errors.add(:created_at, "is too old") if expired?
    errors.add(:vote_id, "has already been cast") if cast?
  end
end
