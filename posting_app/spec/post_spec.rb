require 'spec_helper'

before :each do
    @post = Post.new :content, :title
end

describe "#new" do
    it "takes two parameters and returns a Post object" do
        @post.should be_an_instance_of Post
    end
end

