class CreateJoinTableReviewersBooks < ActiveRecord::Migration[6.0]
  def change
    create_join_table :reviewers, :books do |t|
      # t.index [:reviewer_id, :book_id]
      # t.index [:book_id, :reviewer_id]
    end
  end
end
