class InstitutionsController < ApplicationController

  def index
    @institutions = Institution.all
    @my_authorities = []
    @institutions.group(:authority).each do |autho|
      @my_authorities << autho.authority
    end
   @my_results_hash = Hash.new
   @my_authorities.each do |authority|
      @my_results_hash[authority] = Institution.first.return_total(authority).to_i
    end
    @my_results_hash = @my_results_hash.sort_by{|k,v| v}.reverse.to_h
  end

  def show
    @institutions = Institution.where("authority = ?", params[:id])
  end
end
