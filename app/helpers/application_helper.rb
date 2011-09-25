# -*- coding: utf-8 -*-
module ApplicationHelper


  def showline(label, value, format = "", object = NIL)
    @a = label
    @o = object
    @b = value

    @tag1 = render :inline => "<div id='"+format+"'>"
    @tag2 = render :inline => "</div>"

    if object
      @b = render :inline => "<%= link_to @b, @o =%>"
    end

    case format
    when ""
      render "layouts/showline"
    else
      render "layouts/showline.nolabel"
    end
        
  end 

  def showlist(path, object)
    unless object.empty? 
      @object = object
      render path + "/short"
    end
  end



end
