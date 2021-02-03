file_path = File.dirname(__FILE__)
foreheads_file = file_path + "/data/foreheads.txt"
eyes_file = file_path + "/data/eyes.txt"
mouths_file = file_path + "/data/mouths.txt"
noses_file = file_path + "/data/noses.txt"

if File.exist?(foreheads_file) &&
  File.exist?(eyes_file) &&
  File.exist?(noses_file) &&
  File.exist?(mouths_file)
  ff = File.open(foreheads_file, 'r')
  ef = File.open(eyes_file, 'r')
  mf = File.open(mouths_file, 'r')
  nf = File.open(noses_file, 'r')

  head = ff.readlines.sample
  eye = ef.readlines.sample
  nose=nf.readlines.sample
  moutn=mf.readlines.sample

  puts head
  puts eye
  puts nose
  puts moutn

  ff.close
  ef.close
  mf.close
  nf.close
else
  puts "Один из файлов не существует"
end
