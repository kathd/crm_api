class Outreach < ApplicationRecord
  belongs_to :lead

  # 177 - TODO: Validations to apply below feature:

  # A new outreach should only be created if there
  # is a content in the field. However, if the user
  # leaves the field blank, no new outreach should be
  # created even though the the user clicks on the "Update"
  # button.

  # Note that this field will always be blank when the
  # user comes to the lead edit page, as whatever will be
  # entered into this field is considered a new outreach.
  # There is a separate story to display all the past
  # outreaches.
end
