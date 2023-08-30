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

  def erb?
    @path.extname == ".erb"
  end

  def javascript?
    @path.extname == ".js"
  end

  def markdown?
    @path.extname == ".md"
  end

  def content
    file_contents = if erb?
      remove_class_attributes @path.read
    else
      @path.read
    end

    formatter.format(lexer.lex(file_contents))
  end

  def markdown_content
    Kramdown::Document.new(@path.read).to_html
  end

  private

  def remove_class_attributes(text)
    text.gsub /\s?(,\s)?class(\=|\:\s)\"[^\"]+\"/, ""
  end

  def formatter
    @formatter ||= Rouge::Formatters::HTML.new
  end

  def lexer
    @lexer ||= begin
      if erb?
        Rouge::Lexers::ERB.new
      elsif javascript?
        Rouge::Lexers::Javascript.new
      end
    end
  end
end
