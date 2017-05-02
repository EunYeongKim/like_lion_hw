class AsciifyController < ApplicationController
  def index
  end

  def result
    @font = params[:input_font]
    #symbol로 넘겨지기 때문에 메모리나 모든측면에서 효율적임
    @lion = params[:input_lion]
    @name = params[:input_name]
    @tel = params[:input_tel]

    a = Artii::Base.new(font: @font)
     @output_name = a.asciify(@name)
     @output_tel = a.asciify(@tel)
     @output_lion = a.asciify(@lion)
     #output_tel이라는 것에 넣어서 뷰 파일이랑 연결을 할 수 있음
    
    # a = Artii::Base.new :font => 'slant'
    # #이거를 이런형식으로 할것이다. slant형으로 
    # a.asciify('Art!')

  end
end
