class SearchesController < ApplicationController

  def search
    @member = Member.new(position: '投手')
    @members = Member.select(:position).distinct
    @member = Member.new(position: '投手')
    @members = Member.select(:position).distinct
  end

  def searches
    @test = Array.new
    @test2 = Array.new
  #  @member = Member.new
      if request.post? then
        @test = Member.where "name like ?", '%' + params[:find] + '%'
  #      @member = Member.where shirtnam: params[:num]
        if params['pitcher'] || params['catcher'] || params['infielder'] || params['outfielder'] then
          if params['pitcher'] then
            @test2 += @test.where(position: "投手")
          end
          if params['catcher'] then
            @test2 += @test.where(position: "捕手")
          end
          if params['infielder'] then
            @test2 += @test.where(position: "内野手")
          end
          if params['outfielder'] then
            @test2 += @test.where(position: "外野手")
          end
      #      if params['s1'] then
      #        @member = Member.where position: params['s1']
      #      end
        else
          @test2 = @test
        end
#        if @test.save then
#          @msg = 'OK！'
#        else
#          @msg = '入力ミス'
#        end
      end
  end


end
