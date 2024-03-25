h,w,sy,sx,d,m=gets.split
h=h.to_i
w=w.to_i
sy=sy.to_i
sx=sx.to_i
s=[]
h.times do
    s.push(gets.split(""))
end
left={"N"=>"W","W"=>"S","S"=>"E","E"=>"N"}
right={"N"=>"E","W"=>"N","S"=>"W","E"=>"S"}

def judge(d,h,w,s,sy,sx)
    if d=="N"
        if sy!=0 && s[sy-1][sx]=="."
            puts "Yes"
        else
            puts "No"
        end
    elsif d=="S"
        if sy!=h-1 && s[sy+1][sx]=="."
            puts "Yes"
        else
            puts "No"
        end
    elsif d=="W"
        if sx!=0 && s[sy][sx-1]=="."
            puts "Yes"
        else
            puts "No"
        end
    else
        if sx!=w-1 && s[sy][sx+1]=="."
            puts "Yes"
        else
            puts "No"
        end
    end
end
    
if m=="L"
    d=left[d]
    judge(d,h,w,s,sy,sx)
else
    d=right[d]
    judge(d,h,w,s,sy,sx)
end