# == Schema Information
#
# Table name: status_changes
#
#  id         :integer          not null, primary key
#  status     :integer          default("open"), not null
#  created_at :datetime
#  updated_at :datetime
#  ticket_id  :integer
#
# Indexes
#
#  index_status_changes_on_ticket_id  (ticket_id)
#

# Brimir is a helpdesk system to handle email support requests.
# Copyright (C) 2012-2016 Ivaldi https://ivaldi.nl/
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class StatusChange < ApplicationRecord
  belongs_to :ticket
  enum status: Ticket.statuses

  scope :ordered, -> {
    order(:created_at)
  }
end
