class AddQuestionIdToMultiplechoices < ActiveRecord::Migration
  def change
    add_column :multiplechoices, :question_id, :integer
  end
end
