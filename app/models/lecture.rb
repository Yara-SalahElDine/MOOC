class Lecture < ApplicationRecord
    mount_uploader :attachement, FileAttachmentUploader
    belongs_to :course
    has_many :comments
    acts_as_votable
end
