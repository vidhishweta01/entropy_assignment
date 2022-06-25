module ApplicationHelper
  def after_sign_in_path_for(_resource)
    root_path
  end

  def after_sign_out_path_for(_resource)
    sign_in_path
  end
end
