class SettingsController < ApplicationController

  def edit
    @auto_text = current_admin.setting.auto_text || "" if current_admin.setting
    render :edit
  end

  def update
    if current_admin.setting
      current_admin.setting.update(auto_text: params[:auto_text])
    else
      Setting.create(admin_id: current_admin.id, auto_text: params[:auto_text])
    end
    flash[:success] = "Settings Saved!"
    redirect_to "/"
  end

end
