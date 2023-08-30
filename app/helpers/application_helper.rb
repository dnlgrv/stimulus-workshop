module ApplicationHelper
  def arrow_icon(classes = "w-6 h-h")
    <<~SVG
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="#{classes}">
      <path stroke-linecap="round" stroke-linejoin="round" d="M12.75 15l3-3m0 0l-3-3m3 3h-7.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    SVG
  end

  def cross_icon
    <<~SVG
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
      <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
    </svg>
    SVG
  end

  def menu_icon
    <<~SVG
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
      <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
    </svg>
    SVG
  end

  def next_button(additional_classes)
    content_tag :button, arrow_icon("w-8 h-8").html_safe, class: "p-2 #{additional_classes}"
  end

  def previous_button(additional_classes)
    content_tag :button, arrow_icon("w-8 h-8").html_safe, class: "p-2 rotate-180 #{additional_classes}"
  end
end
