foreheads = []
eyes = []
noses = []
mouths = []
file = File.new("data/foreheads.txt", "r:UTF-8")
foreheads = file.readlines
file.close
file = File.new("data/eyes.txt", "r:UTF-8")
eyes = file.readlines
file.close
file = File.new("data/noses.txt", "r:UTF-8")
noses = file.readlines
file.close
file = File.new("data/mouths.txt", "r:UTF-8")
mouths = file.readlines
file.close
time = Time.now
filename = "face_" + time.strftime("%Y.%m.d_%H-%M-%S") + ".txt"
file = File.new(filename, "w:UTF-8")
file.puts(foreheads.sample)
file.puts(eyes.sample)
file.puts(noses.sample)
file.puts(mouths.sample)
file.close