lines = Array.new

File.open("content.txt","r") do |file|
	while line = file.gets
		lines.push line.chomp
	end
end

title = lines[0]
name = lines[1]
degree = lines[2]
university = lines[3]
city = lines[4]

html = '
<html>
	<head>
		<title>' + title + '</title>
	</head>
	<body>
		<div id="name">' + name + '</div>
	</body>
</html>'

File.open("index.html","w") do |file|
	file.puts html
end