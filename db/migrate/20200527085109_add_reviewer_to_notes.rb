class AddReviewerToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :reviewer, null: false, foreign_key: true
  end
end
