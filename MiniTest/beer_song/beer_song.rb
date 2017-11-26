module BookKeeping
  VERSION = 3
end

class BeerSong
  def verse(k)
    if k == 0
     "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif k == 1
     "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    elsif k == 2
    "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
  else
    x = (k-1).to_s
    k = k.to_s
    k + " bottles of beer on the wall, " + k + " bottles of beer.\nTake one down and pass it around, " + x + " bottles of beer on the wall.\n"
    end

  end

  def verses(n,m)
    text = ''
    while n >= m do
      if n == 0
      text = text +  "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      elsif n == 1
       text = text +  "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      elsif n == 2
        text = text +"2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
      else
       text =  text + n.to_s + ' bottles of beer on the wall, ' + n.to_s + " bottles of beer.\nTake one down and pass it around, " + (n-1).to_s + " bottles of beer on the wall.\n"
      end
      if n != m
        text = text+"\n"
      end
      n=n-1
    end
    text
  end



end
