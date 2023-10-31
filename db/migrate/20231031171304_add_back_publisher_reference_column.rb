# frozen_string_literal: true

class AddBackPublisherReferenceColumn < ActiveRecord::Migration[7.0]
  def change
    add_reference :albums, :publishers, index: true
  end
end
