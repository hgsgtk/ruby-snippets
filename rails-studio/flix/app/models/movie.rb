class Movie < ApplicationRecord
  before_save :set_slug

  has_one_attached :main_image

  has_many :reviews, dependent: :destroy
  has_many :critics, through: :reviews, source: :user
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user
  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  RATINGS = %w[G PG PG-13 R NC-17]

  validates :title, presence: true, uniqueness: true
  validates :released_on, :duration, presence: true
  validates :description, length: { minimum: 25 }
  validates :total_gross, numericality: { greater_than_or_eaual_to: 0 }
  validates :rating, inclusion: { in: RATINGS }
  validate :acceptable_image

  scope :released, -> { where("released_on < ?", Time.now).order(released_on: :desc) }
  scope :upcoming, -> { where("released_on >= ?", Time.now).order(released_on: :asc) }
  scope :recent, ->(max = 5) { released.limit(max) }
  scope :hits, -> {  released.where("total_gross >= ?", 300_000_000).order(total_gross: :desc) }
  scope :flops, -> { released.where("total_gross < ?", 225_000_000).order(total_gross: :asc) }
  scope :grossed_less_than, ->(amount) { released.where("total_gross < ?", amount) }
  scope :grossed_greater_than, ->(amount) { released.where("total_gross > ?", amount) }

  def flop?
    unless reviews.count > 50 && average_stars >= 4
      total_gross.blank? || total_gross < 225_000_000
    end
  end

  def average_stars
    reviews.average(:stars) || 0.0
  end

  def average_stars_as_percent
    (self.average_stars / 5.0) * 100
  end

  def self.recently_added
    order("created_at DESC").limit(3)
  end

  def to_param
    slug
  end

  private

  def set_slug
    self.slug = title.parameterize
  end

  def acceptable_image
    return unless main_image.attached?

    unless main_image.blob.byte_size <= 1.megabyte
      errors.add(:main_image, "is too big") if main_image.blob.byte_size > 1.megabyte
    end

    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(main_image.blob.content_type)
      errors.add(:main_image, "must be a JPEG or PNG")
    end
  end
end
