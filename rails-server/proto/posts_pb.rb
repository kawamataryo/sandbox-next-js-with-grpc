# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/posts.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("proto/posts.proto", :syntax => :proto3) do
    add_message "Posts.Post" do
      optional :id, :int32, 1
      optional :title, :string, 2
      optional :content, :string, 3
    end
    add_message "Posts.GetPostsResponse" do
      repeated :posts, :message, 1, "Posts.Post"
    end
    add_message "Posts.AddPostRequest" do
      optional :post, :message, 1, "Posts.Post"
    end
    add_message "Posts.AddPostResponse" do
      optional :post, :message, 1, "Posts.Post"
    end
  end
end

module Posts
  Post = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Posts.Post").msgclass
  GetPostsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Posts.GetPostsResponse").msgclass
  AddPostRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Posts.AddPostRequest").msgclass
  AddPostResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Posts.AddPostResponse").msgclass
end
