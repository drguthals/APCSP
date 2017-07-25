require 'octokit'
require 'base64'
require 'tk'

#OAuth Access Tokens
#------------------------------------------------------------------------------
#Sarah's Repo
#client = Octokit::Client.new(:access_token => "6888c0c65aeb358a2341ed6a2b615a0c8e855a0d")

#Adrian's Repo
client = Octokit::Client.new(:access_token => "842641aa5092c86edfd19508876c0056530004c1")
#------------------------------------------------------------------------------

repo = 'adsalgue/octotesting'
ref = 'heads/master'

#Contains the file string data
commitString = String.new("")

#Contains the file path specified
filePath = String.new

#Contains the file name of what is committed
fileName = String.new

#Opens the file dialog
#---------------------------------------------------------------------------
root = TkRoot.new
root.title = "Window"
button_click = Proc.new {
   filePath = Tk.getOpenFile
}

button = TkButton.new(root) do
   text 'Select File'
   pack { padx 50 ; pady 50; side 'left' }
end
button.comman = button_click
Tk.mainloop
#---------------------------------------------------------------------------

fileName = File.basename filePath

#Reads specified file line by line, adds to string to be committed
#--------------------------------------------------------------------------
File.open(filePath, "r") do |f|
   f.each_line do |line|
     commitString = commitString + line
   end
end
#---------------------------------------------------------------------------

# Working Commit Code
#---------------------------------------------------------------------------
sha_latest_commit = client.ref(repo, ref).object.sha
sha_base_tree = client.commit(repo, sha_latest_commit).commit.tree.sha

#File.join(Name of folder to commit to, file name being committed)
file_name = File.join("Alice_Files", fileName)

blob_sha = client.create_blob(repo, Base64.encode64(commitString), "base64")
sha_new_tree = client.create_tree(repo,
                                   [ { :path => file_name,
                                       :mode => "100644",
                                       :type => "blob",
                                       :sha => blob_sha } ],
                                   {:base_tree => sha_base_tree }).sha
commit_message = "Testing Dialog Box Submission!"
sha_new_commit = client.create_commit(repo, commit_message, sha_new_tree, sha_latest_commit).sha
updated_ref = client.update_ref(repo, ref, sha_new_commit)
puts updated_ref
#------------------------------------------------------------------------
