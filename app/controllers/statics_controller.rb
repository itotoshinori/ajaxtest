class StaticsController < ApplicationController
  def top
    @id = 1
    @body = Content.find(@id).body
  end
  def ajax_update
    # topページにある「data(入力フォーム)」のパラメーターを@textに代入
    @text = params[:data]
    num = params[:num]
    content = Content.find(num)
    content.body = @text
    content.save
    @body = @text
  end
end
