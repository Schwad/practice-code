class Institution < ActiveRecord::Base
  def return_total(authority)
    @answer = 0
    Institution.where("authority = ?", authority).each do |institution|
      @answer += institution.number_entered
    end
    return @answer
  end

  def distinction_rate(id)
    @inst = Institution.find(id)
    @total = @inst.number_entered
    @base = @inst.distinction_1
    @base += @inst.distinction_2
    @base += @inst.distinction_3
    answer = @base.to_f / @total.to_f
    return answer

  end
end
