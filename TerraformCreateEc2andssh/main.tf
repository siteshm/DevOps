provider "aws" {
   region = "ap-south-1"
}

resource "aws_key_pair" "terraform" {
   key_name = "Test"
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCglzcep8I+gbO2vU/meZk10zNfsyit5Tc9sVrCB12i6DLb1ZMDdZIKrnvOsD7HjR5hmAB2uczZbkcQKv2v966W0gs/Y+DmOI4USAhLQMlvBL7M8eCAuwwonk3jQXQy6zBkqd/+HnBPpZNSqtIh9lw5zwWlr9IyThj6DxTAfuNmf6N/gzpKNJA7O8xYrA5GDxuEYeXYq1aW5yHWNOGRPGTgE2mgm0hTEOrc6g4SiIMm6BQbI8jV98q2pZ+Fn0aVZ44GIBWPzPW9+nGkd8mLK6wxXvl62jHLoibvOTvsZweWcEKbcgQjs7NqjjPn5rXO0VaxjST6EdCCRtTTrZvBIs7R"
}

resource "aws_instance" "test-vm" {
   ami = "ami-0ad42f4f66f6c1cc9"
   instance_type = "t2.micro"
   key_name = "Test"

   tags {
     Name = "test-vm"
   }
}
