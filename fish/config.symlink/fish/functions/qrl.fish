function qrl --description 'encode a string to a QR code, displayed on the terminal'
	echo $argv | qrencode -t ASCIIi -o - | sed 's/#/█/g'
end
