class StreamItem < ActiveRecord::Base
  belongs_to :stream_list

  def completed?
    !completed_at.blank?
  end
end
