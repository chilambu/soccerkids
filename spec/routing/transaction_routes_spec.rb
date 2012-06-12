require "spec_helper"
describe TransactionController do
 describe "routing" do
  it "routes to #index" do
    {:get => "/transaction"}.should route_to(:controller => "transaction", :action => "index")
  end
  it "routes to #show" do
   {:get => "/transaction/1"}.should route_to(:controller => "transaction", :action => "show",:id=>"1")
  end
  it "routes to #new" do
    {:get => "/transaction/new"}.should route_to(:controller => "transaction", :action => "new")
  end
    it "routes to #edit" do
    {:get => "transaction/1/edit"}.should route_to(:controller => "transaction", :action => "edit",:id=>"1")
  end
    it "routes to #create" do
    {:post => "/transaction"}.should route_to(:controller => "transaction", :action => "create")
  end
    it "routes to #update" do
    {:put => "/transaction/1"}.should route_to(:controller => "transaction", :action => "update",:id=>"1")
  end
    it "routes to #destroy" do
     {:delete => "/transaction/1"}.should route_to(:controller => "transaction", :action => "destroy",:id=>"1")
  end
 end
end


