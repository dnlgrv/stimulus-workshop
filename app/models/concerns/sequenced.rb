module Sequenced
  extend ActiveSupport::Concern

  included do
    default_scope ->{ order(position: :asc) }

    define_method "has_next_#{name.underscore}?" do
      next_in_sequence.present?
    end

    define_method "has_previous_#{name.underscore}?" do
      previous_in_sequence.present?
    end

    define_method "next_#{name.underscore}" do
      next_in_sequence
    end

    define_method "previous_#{name.underscore}" do
      previous_in_sequence
    end
  end

  private

  def next_in_sequence
    @_next_in_sequence ||= self.class.find_by(position: position + 1)
  end

  def previous_in_sequence
    @_previous_in_sequence ||= self.class.find_by(position: position - 1)
  end
end
