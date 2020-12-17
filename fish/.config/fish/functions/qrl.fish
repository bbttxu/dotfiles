function qrl --description 'encode a URL, or string, to a QR code on the terminal'
    echo $argv | qrencode -t ASCIIi -o - | sed 's/#/█/g'
end