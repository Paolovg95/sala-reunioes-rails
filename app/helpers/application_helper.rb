module ApplicationHelper
  def render_modal(title: "", body: "")
    render(partial: '/partials/modal', locals: { title: title, body: body })
  end
end
