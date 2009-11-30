class JavascriptIncludeTag < Liquid::Tag
  def initialize(tag_name, src)
    super
    @src = src
  end

  def render(context)
    %(<script src="/javascripts/#{@src}.js" type="text/javascript"></script>)
  end
end
