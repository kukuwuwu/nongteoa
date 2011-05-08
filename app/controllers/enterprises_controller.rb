# coding: utf-8
class EnterprisesController < ApplicationController
  layout 'main'
  # GET /enterprises
  # GET /enterprises.xml
  def index
    @enterprises = Enterprise.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enterprises }
    end
  end

  # GET /enterprises/1
  # GET /enterprises/1.xml
  def show
    @enterprise = Enterprise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enterprise }
    end
  end

  # GET /enterprises/new
  # GET /enterprises/new.xml
  def new
    @enterprise = Enterprise.new
    content_persons = []
    content_persons[0] = ContentPerson.new
#    {"beijing"=>{"items"=>{"b-01-01"=>"010201"}, "val"=>"01"},"beijing"=>{"items"=>{"b-01-01"=>"010201"}, "val"=>"01"}}
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enterprise }
      format.js  { render_to_facebox}
    end
  end

  # GET /enterprises/1/edit
  def edit
    @enterprise = Enterprise.find(params[:id])
  end

  # POST /enterprises
  # POST /enterprises.xml
  def create
    @enterprise = Enterprise.new(params[:enterprise])

    respond_to do |format|
      if @enterprise.save
        format.html { redirect_to(@enterprise, :notice => 'Enterprise was successfully created.') }
        format.xml  { render :xml => @enterprise, :status => :created, :location => @enterprise }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enterprise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enterprises/1
  # PUT /enterprises/1.xml
  def update
    @enterprise = Enterprise.find(params[:id])

    respond_to do |format|
      if @enterprise.update_attributes(params[:enterprise])
        format.html { redirect_to(@enterprise, :notice => 'Enterprise was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enterprise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprises/1
  # DELETE /enterprises/1.xml
  def destroy
    @enterprise = Enterprise.find(params[:id])
    @enterprise.destroy

    respond_to do |format|
      format.html { redirect_to(enterprises_url) }
      format.xml  { head :ok }
    end
  end
end
