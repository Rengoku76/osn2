foreheads_path = "data/foreheads.txt"
eyes_path = "data/eyes.txt"
noses_path = "data/noses.txt"
mouths_path = "data/mouths.txt"
file = File.new(foreheads_path, "r:UTF-8")
foreheads = file.readlines
file.close
file = File.new(eyes_path, "r:UTF-8")
eyes = file.readlines
file.close
file = File.new(noses_path, "r:UTF-8")
noses = file.readlines
file.close
file = File.new(mouths_path, "r:UTF-8")
mouths = file.readlines
file.close
puts foreheads.sample
puts eyes.sample
puts noses.sample
puts mouths.sample