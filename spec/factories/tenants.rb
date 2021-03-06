# == Schema Information
#
# Table name: tenants
#
#  id                                              :integer          not null, primary key
#  ask_for_name                                    :boolean          default(FALSE)
#  default_locale                                  :string           default("en")
#  default_time_zone                               :string           default("Amsterdam")
#  domain                                          :string
#  first_reply_ignores_notified_agents             :boolean          default(FALSE), not null
#  from                                            :string
#  ignore_user_agent_locale                        :boolean          default(FALSE), not null
#  javascript_url                                  :string
#  notify_client_when_ticket_is_assigned_or_closed :boolean          default(FALSE), not null
#  notify_client_when_ticket_is_created            :boolean          default(FALSE)
#  notify_user_when_account_is_created             :boolean          default(FALSE)
#  share_drafts                                    :boolean          default(FALSE)
#  stylesheet_url                                  :string
#  ticket_creation_is_open_to_the_world            :boolean          default(TRUE)
#  created_at                                      :datetime         not null
#  updated_at                                      :datetime         not null
#  email_template_id                               :integer
#
# Indexes
#
#  index_tenants_on_domain             (domain) UNIQUE
#  index_tenants_on_email_template_id  (email_template_id)
#

FactoryBot.define do
  factory :tenant do
    domain { 'test.host' }
    from { 'support@test.host' }
  end
end
