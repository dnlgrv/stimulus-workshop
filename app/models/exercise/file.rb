class Exercise::File
  def initialize(path, name = nil)
    @path = path
    @name = name
  end

  def to_param
    Digest::MD5.hexdigest @path.to_s
  end

  def format
    :html
  end

  def name
    @name || File.basename(@path)
  end

  def markdown?
    @path.extname == ".md"
  end

  def content
    @path.read
  end

  def markdown_content
    Kramdown::Document.new(content).to_html.html_safe
  end
end
