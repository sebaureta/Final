module TasksHelper
  def image_for(task, options = { size: 300 })
  size = options[:size]
    if task.image?
      image_tag task.image.url(:thumb), width: size
    else
      image_tag 'default-avatar.png', width: size
    end
end
end
