data = File.open("./data/randomstuff", "r").read;
p data.unpack("Q*").length;
