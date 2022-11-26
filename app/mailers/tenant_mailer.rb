# frozen_string_literal: true

class TenantMailer < ApplicationMailer
  def notify_tenant(id)
    @user_name = Tenant.find(id).user.full_name
    mail(
      to: 'sr@selise.ch',
      subject: 'New Rentals Request Approved'
    )
  end

  def notify_tenant_occupied(id)
    @user_name = Tenant.find(id)
    mail(
      to: 'sr@selise.ch',
      subject: 'New Rentals Unit Already Occupied'
    )
  end

end
